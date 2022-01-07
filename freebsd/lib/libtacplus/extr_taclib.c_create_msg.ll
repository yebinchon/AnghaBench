; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_create_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libtacplus/extr_taclib.c_create_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tac_handle = type { i32*, i32, i32, i32, i32, i32, %struct.tac_msg, i64 }
%struct.tac_msg = type { i32, i64, i32 }

@MAXAVPAIRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tac_handle*, i32, i32, i32)* @create_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_msg(%struct.tac_handle* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tac_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tac_msg*, align 8
  %10 = alloca i32, align 4
  store %struct.tac_handle* %0, %struct.tac_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %12 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %11, i32 0, i32 7
  store i64 0, i64* %12, align 8
  %13 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %14 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %13, i32 0, i32 6
  store %struct.tac_msg* %14, %struct.tac_msg** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.tac_msg*, %struct.tac_msg** %9, align 8
  %17 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @protocol_version(i32 %18, i32 %19, i32 %20)
  %22 = load %struct.tac_msg*, %struct.tac_msg** %9, align 8
  %23 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.tac_msg*, %struct.tac_msg** %9, align 8
  %25 = getelementptr inbounds %struct.tac_msg, %struct.tac_msg* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %27 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %26, i32 0, i32 5
  %28 = call i32 @free_str(i32* %27)
  %29 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %30 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %29, i32 0, i32 4
  %31 = call i32 @free_str(i32* %30)
  %32 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %33 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %32, i32 0, i32 3
  %34 = call i32 @free_str(i32* %33)
  %35 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %36 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %35, i32 0, i32 2
  %37 = call i32 @free_str(i32* %36)
  %38 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %39 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %38, i32 0, i32 1
  %40 = call i32 @free_str(i32* %39)
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %53, %4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @MAXAVPAIRS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.tac_handle*, %struct.tac_handle** %5, align 8
  %47 = getelementptr inbounds %struct.tac_handle, %struct.tac_handle* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @free_str(i32* %51)
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %41

56:                                               ; preds = %41
  ret void
}

declare dso_local i32 @protocol_version(i32, i32, i32) #1

declare dso_local i32 @free_str(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
