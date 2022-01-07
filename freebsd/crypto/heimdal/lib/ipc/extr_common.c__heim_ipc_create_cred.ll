; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_common.c__heim_ipc_create_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_common.c__heim_ipc_create_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_heim_ipc_create_cred(i32 %0, i32 %1, i8* %2, i8* %3, %struct.TYPE_4__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__**, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_4__** %4, %struct.TYPE_4__*** %11, align 8
  %12 = call %struct.TYPE_4__* @calloc(i32 1, i32 24)
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %13, align 8
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %6, align 4
  br label %36

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %19, %17
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
