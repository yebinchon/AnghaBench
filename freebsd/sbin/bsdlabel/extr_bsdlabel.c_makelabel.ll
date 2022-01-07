; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_makelabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_makelabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disklabel = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: unknown disk type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.disklabel*)* @makelabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makelabel(i8* %0, %struct.disklabel* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.disklabel*, align 8
  %5 = alloca %struct.disklabel*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.disklabel* %1, %struct.disklabel** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call %struct.disklabel* (...) @getvirginlabel()
  store %struct.disklabel* %10, %struct.disklabel** %5, align 8
  br label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = call %struct.disklabel* @getdiskbyname(i8* %12)
  store %struct.disklabel* %13, %struct.disklabel** %5, align 8
  br label %14

14:                                               ; preds = %11, %9
  %15 = load %struct.disklabel*, %struct.disklabel** %5, align 8
  %16 = icmp eq %struct.disklabel* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %22 = load %struct.disklabel*, %struct.disklabel** %5, align 8
  %23 = bitcast %struct.disklabel* %21 to i8*
  %24 = bitcast %struct.disklabel* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.disklabel*, %struct.disklabel** %4, align 8
  %26 = getelementptr inbounds %struct.disklabel, %struct.disklabel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bzero(i32 %27, i32 4)
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.disklabel* @getvirginlabel(...) #1

declare dso_local %struct.disklabel* @getdiskbyname(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
