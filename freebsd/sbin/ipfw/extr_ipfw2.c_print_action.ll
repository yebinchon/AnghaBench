; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.buf_pr = type { i32 }
%struct.format_opts = type { i32 }
%struct.show_state = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.buf_pr*, %struct.format_opts*, %struct.show_state*, i64)* @print_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @print_action(%struct.buf_pr* %0, %struct.format_opts* %1, %struct.show_state* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.buf_pr*, align 8
  %7 = alloca %struct.format_opts*, align 8
  %8 = alloca %struct.show_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  store %struct.buf_pr* %0, %struct.buf_pr** %6, align 8
  store %struct.format_opts* %1, %struct.format_opts** %7, align 8
  store %struct.show_state* %2, %struct.show_state** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.show_state*, %struct.show_state** %8, align 8
  %13 = getelementptr inbounds %struct.show_state, %struct.show_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.show_state*, %struct.show_state** %8, align 8
  %18 = getelementptr inbounds %struct.show_state, %struct.show_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %16, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.show_state*, %struct.show_state** %8, align 8
  %24 = getelementptr inbounds %struct.show_state, %struct.show_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = call %struct.TYPE_7__* @ACTION_PTR(%struct.TYPE_8__* %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %10, align 8
  br label %27

27:                                               ; preds = %47, %4
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %27
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %47

37:                                               ; preds = %30
  %38 = load %struct.buf_pr*, %struct.buf_pr** %6, align 8
  %39 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %40 = load %struct.show_state*, %struct.show_state** %8, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = call i32 @print_action_instruction(%struct.buf_pr* %38, %struct.format_opts* %39, %struct.show_state* %40, %struct.TYPE_7__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %47

45:                                               ; preds = %37
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %5, align 8
  br label %59

47:                                               ; preds = %44, %36
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = call i64 @F_LEN(%struct.TYPE_7__* %48)
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %55 = call i64 @F_LEN(%struct.TYPE_7__* %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %55
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %10, align 8
  br label %27

58:                                               ; preds = %27
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %59

59:                                               ; preds = %58, %45
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %60
}

declare dso_local %struct.TYPE_7__* @ACTION_PTR(%struct.TYPE_8__*) #1

declare dso_local i32 @print_action_instruction(%struct.buf_pr*, %struct.format_opts*, %struct.show_state*, %struct.TYPE_7__*) #1

declare dso_local i64 @F_LEN(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
