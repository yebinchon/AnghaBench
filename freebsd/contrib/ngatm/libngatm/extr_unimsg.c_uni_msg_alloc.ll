; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ngatm/libngatm/extr_unimsg.c_uni_msg_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ngatm/libngatm/extr_unimsg.c_uni_msg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i32*, i32*, i32*, i32* }

@EXTRA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uni_msg* @uni_msg_alloc(i64 %0) #0 {
  %2 = alloca %struct.uni_msg*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.uni_msg*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* @EXTRA, align 8
  %6 = load i64, i64* %3, align 8
  %7 = add i64 %6, %5
  store i64 %7, i64* %3, align 8
  %8 = call i8* @malloc(i64 32)
  %9 = bitcast i8* %8 to %struct.uni_msg*
  store %struct.uni_msg* %9, %struct.uni_msg** %4, align 8
  %10 = icmp eq %struct.uni_msg* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.uni_msg* null, %struct.uni_msg** %2, align 8
  br label %38

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i8* @malloc(i64 %13)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %17 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = icmp eq i32* %15, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %21 = call i32 @free(%struct.uni_msg* %20)
  store %struct.uni_msg* null, %struct.uni_msg** %2, align 8
  br label %38

22:                                               ; preds = %12
  %23 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %24 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %27 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %29 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %28, i32 0, i32 3
  store i32* %25, i32** %29, align 8
  %30 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %31 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  %36 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.uni_msg*, %struct.uni_msg** %4, align 8
  store %struct.uni_msg* %37, %struct.uni_msg** %2, align 8
  br label %38

38:                                               ; preds = %22, %19, %11
  %39 = load %struct.uni_msg*, %struct.uni_msg** %2, align 8
  ret %struct.uni_msg* %39
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(%struct.uni_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
