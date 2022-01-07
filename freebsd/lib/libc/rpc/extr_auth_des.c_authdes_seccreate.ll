; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_des.c_authdes_seccreate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_des.c_authdes_seccreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"authdes_seccreate: no public key found for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @authdes_seccreate(i8* %0, i64 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [1024 x i32], align 16
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 0
  %15 = bitcast i32* %14 to i8*
  %16 = call i32 @getpublickey(i8* %13, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @syslog(i32 %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32* null, i32** %5, align 8
  br label %37

22:                                               ; preds = %4
  %23 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 0
  %24 = bitcast i32* %23 to i8*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 0
  %27 = bitcast i32* %26 to i8*
  %28 = call i64 @strlen(i8* %27)
  %29 = add nsw i64 %28, 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32* @authdes_pk_seccreate(i8* %31, %struct.TYPE_3__* %11, i64 %32, i8* %33, i32* %34, i32* null)
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  store i32* %36, i32** %5, align 8
  br label %37

37:                                               ; preds = %22, %18
  %38 = load i32*, i32** %5, align 8
  ret i32* %38
}

declare dso_local i32 @getpublickey(i8*, i8*) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @authdes_pk_seccreate(i8*, %struct.TYPE_3__*, i64, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
