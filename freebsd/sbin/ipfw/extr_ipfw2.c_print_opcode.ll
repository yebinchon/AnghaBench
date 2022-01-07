; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_opcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_print_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.buf_pr = type { i32 }
%struct.format_opts = type { i32 }
%struct.show_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }

@O_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.buf_pr*, %struct.format_opts*, %struct.show_state*, i32)* @print_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @print_opcode(%struct.buf_pr* %0, %struct.format_opts* %1, %struct.show_state* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.buf_pr*, align 8
  %7 = alloca %struct.format_opts*, align 8
  %8 = alloca %struct.show_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  store %struct.buf_pr* %0, %struct.buf_pr** %6, align 8
  store %struct.format_opts* %1, %struct.format_opts** %7, align 8
  store %struct.show_state* %2, %struct.show_state** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.show_state*, %struct.show_state** %8, align 8
  %13 = getelementptr inbounds %struct.show_state, %struct.show_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.show_state*, %struct.show_state** %8, align 8
  %18 = getelementptr inbounds %struct.show_state, %struct.show_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %10, align 8
  br label %22

22:                                               ; preds = %56, %4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %56

35:                                               ; preds = %28, %25
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @O_NOP, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @O_NOP, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %56

46:                                               ; preds = %41, %35
  %47 = load %struct.buf_pr*, %struct.buf_pr** %6, align 8
  %48 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %49 = load %struct.show_state*, %struct.show_state** %8, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = call i32 @print_instruction(%struct.buf_pr* %47, %struct.format_opts* %48, %struct.show_state* %49, %struct.TYPE_7__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %56

54:                                               ; preds = %46
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %5, align 8
  br label %68

56:                                               ; preds = %53, %45, %34
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %58 = call i64 @F_LEN(%struct.TYPE_7__* %57)
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = call i64 @F_LEN(%struct.TYPE_7__* %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %64
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %10, align 8
  br label %22

67:                                               ; preds = %22
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %68

68:                                               ; preds = %67, %54
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %69
}

declare dso_local i32 @print_instruction(%struct.buf_pr*, %struct.format_opts*, %struct.show_state*, %struct.TYPE_7__*) #1

declare dso_local i64 @F_LEN(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
