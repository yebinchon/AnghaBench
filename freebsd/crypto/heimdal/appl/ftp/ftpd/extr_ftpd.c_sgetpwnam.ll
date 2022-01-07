; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_sgetpwnam.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_sgetpwnam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i8*, i8*, i8*, i8* }

@sgetpwnam.save = internal global %struct.passwd zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.passwd* (i8*)* @sgetpwnam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.passwd* @sgetpwnam(i8* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.passwd* @k_getpwnam(i8* %5)
  store %struct.passwd* %6, %struct.passwd** %4, align 8
  %7 = icmp eq %struct.passwd* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.passwd*, %struct.passwd** %4, align 8
  store %struct.passwd* %9, %struct.passwd** %2, align 8
  br label %47

10:                                               ; preds = %1
  %11 = load i8*, i8** getelementptr inbounds (%struct.passwd, %struct.passwd* @sgetpwnam.save, i32 0, i32 4), align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i8*, i8** getelementptr inbounds (%struct.passwd, %struct.passwd* @sgetpwnam.save, i32 0, i32 4), align 8
  %15 = call i32 @free(i8* %14)
  %16 = load i8*, i8** getelementptr inbounds (%struct.passwd, %struct.passwd* @sgetpwnam.save, i32 0, i32 3), align 8
  %17 = call i32 @free(i8* %16)
  %18 = load i8*, i8** getelementptr inbounds (%struct.passwd, %struct.passwd* @sgetpwnam.save, i32 0, i32 2), align 8
  %19 = call i32 @free(i8* %18)
  %20 = load i8*, i8** getelementptr inbounds (%struct.passwd, %struct.passwd* @sgetpwnam.save, i32 0, i32 1), align 8
  %21 = call i32 @free(i8* %20)
  %22 = load i8*, i8** getelementptr inbounds (%struct.passwd, %struct.passwd* @sgetpwnam.save, i32 0, i32 0), align 8
  %23 = call i32 @free(i8* %22)
  br label %24

24:                                               ; preds = %13, %10
  %25 = load %struct.passwd*, %struct.passwd** %4, align 8
  %26 = bitcast %struct.passwd* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.passwd* @sgetpwnam.save to i8*), i8* align 8 %26, i64 40, i1 false)
  %27 = load %struct.passwd*, %struct.passwd** %4, align 8
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 4
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @sgetsave(i8* %29)
  store i8* %30, i8** getelementptr inbounds (%struct.passwd, %struct.passwd* @sgetpwnam.save, i32 0, i32 4), align 8
  %31 = load %struct.passwd*, %struct.passwd** %4, align 8
  %32 = getelementptr inbounds %struct.passwd, %struct.passwd* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @sgetsave(i8* %33)
  store i8* %34, i8** getelementptr inbounds (%struct.passwd, %struct.passwd* @sgetpwnam.save, i32 0, i32 3), align 8
  %35 = load %struct.passwd*, %struct.passwd** %4, align 8
  %36 = getelementptr inbounds %struct.passwd, %struct.passwd* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @sgetsave(i8* %37)
  store i8* %38, i8** getelementptr inbounds (%struct.passwd, %struct.passwd* @sgetpwnam.save, i32 0, i32 2), align 8
  %39 = load %struct.passwd*, %struct.passwd** %4, align 8
  %40 = getelementptr inbounds %struct.passwd, %struct.passwd* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @sgetsave(i8* %41)
  store i8* %42, i8** getelementptr inbounds (%struct.passwd, %struct.passwd* @sgetpwnam.save, i32 0, i32 1), align 8
  %43 = load %struct.passwd*, %struct.passwd** %4, align 8
  %44 = getelementptr inbounds %struct.passwd, %struct.passwd* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @sgetsave(i8* %45)
  store i8* %46, i8** getelementptr inbounds (%struct.passwd, %struct.passwd* @sgetpwnam.save, i32 0, i32 0), align 8
  store %struct.passwd* @sgetpwnam.save, %struct.passwd** %2, align 8
  br label %47

47:                                               ; preds = %24, %8
  %48 = load %struct.passwd*, %struct.passwd** %2, align 8
  ret %struct.passwd* %48
}

declare dso_local %struct.passwd* @k_getpwnam(i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @sgetsave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
