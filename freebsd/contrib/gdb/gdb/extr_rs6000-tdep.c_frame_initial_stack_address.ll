; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_frame_initial_stack_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_frame_initial_stack_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.rs6000_framedata = type { i64 }
%struct.TYPE_2__ = type { i8* }

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.frame_info*)* @frame_initial_stack_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @frame_initial_stack_address(%struct.frame_info* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rs6000_framedata, align 8
  %6 = alloca %struct.frame_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %9 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %10 = call %struct.TYPE_2__* @get_frame_extra_info(%struct.frame_info* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %16 = call %struct.TYPE_2__* @get_frame_extra_info(%struct.frame_info* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %2, align 8
  br label %75

19:                                               ; preds = %1
  %20 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %21 = call i32 @get_frame_func(%struct.frame_info* %20)
  %22 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %23 = call i32 @get_frame_pc(%struct.frame_info* %22)
  %24 = call i32 @skip_prologue(i32 %21, i32 %23, %struct.rs6000_framedata* %5)
  %25 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %26 = call i32 @deprecated_get_frame_saved_regs(%struct.frame_info* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %30 = call i32 @frame_get_saved_regs(%struct.frame_info* %29, %struct.rs6000_framedata* %5)
  br label %31

31:                                               ; preds = %28, %19
  %32 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %5, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %37 = call i8* @get_frame_base(%struct.frame_info* %36)
  %38 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %39 = call %struct.TYPE_2__* @get_frame_extra_info(%struct.frame_info* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %42 = call %struct.TYPE_2__* @get_frame_extra_info(%struct.frame_info* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %2, align 8
  br label %75

45:                                               ; preds = %31
  %46 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %7, align 8
  %49 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %8, align 8
  %50 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %51 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %5, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @frame_register_read(%struct.frame_info* %50, i64 %52, i8* %49)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %5, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i64 %57)
  %59 = call i8* @extract_unsigned_integer(i8* %49, i32 %58)
  %60 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %61 = call %struct.TYPE_2__* @get_frame_extra_info(%struct.frame_info* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  br label %69

63:                                               ; preds = %45
  %64 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %65 = call i8* @get_frame_base(%struct.frame_info* %64)
  %66 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %67 = call %struct.TYPE_2__* @get_frame_extra_info(%struct.frame_info* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  br label %69

69:                                               ; preds = %63, %55
  %70 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %72 = call %struct.TYPE_2__* @get_frame_extra_info(%struct.frame_info* %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %2, align 8
  br label %75

75:                                               ; preds = %69, %35, %14
  %76 = load i8*, i8** %2, align 8
  ret i8* %76
}

declare dso_local %struct.TYPE_2__* @get_frame_extra_info(%struct.frame_info*) #1

declare dso_local i32 @skip_prologue(i32, i32, %struct.rs6000_framedata*) #1

declare dso_local i32 @get_frame_func(%struct.frame_info*) #1

declare dso_local i32 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i32 @deprecated_get_frame_saved_regs(%struct.frame_info*) #1

declare dso_local i32 @frame_get_saved_regs(%struct.frame_info*, %struct.rs6000_framedata*) #1

declare dso_local i8* @get_frame_base(%struct.frame_info*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @frame_register_read(%struct.frame_info*, i64, i8*) #1

declare dso_local i8* @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
