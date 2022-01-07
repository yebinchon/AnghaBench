; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-wingeneral.c_tui_refresh_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-wingeneral.c_tui_refresh_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.tui_gen_win_info, %struct.TYPE_4__ }
%struct.tui_gen_win_info = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tui_gen_win_info* }

@SRC_WIN = common dso_local global i32 0, align 4
@MAX_MAJOR_WINDOWS = common dso_local global i32 0, align 4
@DISASSEM_WIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_refresh_all(%struct.tui_win_info** %0) #0 {
  %2 = alloca %struct.tui_win_info**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tui_gen_win_info*, align 8
  store %struct.tui_win_info** %0, %struct.tui_win_info*** %2, align 8
  %5 = call %struct.tui_gen_win_info* (...) @tui_locator_win_info_ptr()
  store %struct.tui_gen_win_info* %5, %struct.tui_gen_win_info** %4, align 8
  %6 = load i32, i32* @SRC_WIN, align 4
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %77, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MAX_MAJOR_WINDOWS, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %80

11:                                               ; preds = %7
  %12 = load %struct.tui_win_info**, %struct.tui_win_info*** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %12, i64 %14
  %16 = load %struct.tui_win_info*, %struct.tui_win_info** %15, align 8
  %17 = icmp ne %struct.tui_win_info* %16, null
  br i1 %17, label %18, label %76

18:                                               ; preds = %11
  %19 = load %struct.tui_win_info**, %struct.tui_win_info*** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %19, i64 %21
  %23 = load %struct.tui_win_info*, %struct.tui_win_info** %22, align 8
  %24 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %18
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SRC_WIN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @DISASSEM_WIN, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32, %28
  %37 = load %struct.tui_win_info**, %struct.tui_win_info*** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %37, i64 %39
  %41 = load %struct.tui_win_info*, %struct.tui_win_info** %40, align 8
  %42 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %44, align 8
  %46 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @touchwin(i32 %47)
  %49 = load %struct.tui_win_info**, %struct.tui_win_info*** %2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %49, i64 %51
  %53 = load %struct.tui_win_info*, %struct.tui_win_info** %52, align 8
  %54 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %56, align 8
  %58 = call i32 @tui_refresh_win(%struct.tui_gen_win_info* %57)
  br label %59

59:                                               ; preds = %36, %32
  %60 = load %struct.tui_win_info**, %struct.tui_win_info*** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %60, i64 %62
  %64 = load %struct.tui_win_info*, %struct.tui_win_info** %63, align 8
  %65 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @touchwin(i32 %67)
  %69 = load %struct.tui_win_info**, %struct.tui_win_info*** %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.tui_win_info*, %struct.tui_win_info** %69, i64 %71
  %73 = load %struct.tui_win_info*, %struct.tui_win_info** %72, align 8
  %74 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %73, i32 0, i32 0
  %75 = call i32 @tui_refresh_win(%struct.tui_gen_win_info* %74)
  br label %76

76:                                               ; preds = %59, %18, %11
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %7

80:                                               ; preds = %7
  %81 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %82 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %87 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @touchwin(i32 %88)
  %90 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %91 = call i32 @tui_refresh_win(%struct.tui_gen_win_info* %90)
  br label %92

92:                                               ; preds = %85, %80
  ret void
}

declare dso_local %struct.tui_gen_win_info* @tui_locator_win_info_ptr(...) #1

declare dso_local i32 @touchwin(i32) #1

declare dso_local i32 @tui_refresh_win(%struct.tui_gen_win_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
