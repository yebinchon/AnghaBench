; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_cmd_builtin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_cmd_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.biltins = type { i64 }

@bfunc = common dso_local global %struct.biltins* null, align 8
@nbfunc = common dso_local global i64 0, align 8
@nt_bfunc = common dso_local global %struct.biltins* null, align 8
@nt_nbfunc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tw_cmd_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw_cmd_builtin() #0 {
  %1 = alloca %struct.biltins*, align 8
  %2 = load %struct.biltins*, %struct.biltins** @bfunc, align 8
  store %struct.biltins* %2, %struct.biltins** %1, align 8
  br label %3

3:                                                ; preds = %21, %0
  %4 = load %struct.biltins*, %struct.biltins** %1, align 8
  %5 = load %struct.biltins*, %struct.biltins** @bfunc, align 8
  %6 = load i64, i64* @nbfunc, align 8
  %7 = getelementptr inbounds %struct.biltins, %struct.biltins* %5, i64 %6
  %8 = icmp ult %struct.biltins* %4, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = load %struct.biltins*, %struct.biltins** %1, align 8
  %11 = getelementptr inbounds %struct.biltins, %struct.biltins* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.biltins*, %struct.biltins** %1, align 8
  %16 = getelementptr inbounds %struct.biltins, %struct.biltins* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @str2short(i64 %17)
  %19 = call i32 @tw_cmd_add(i32 %18)
  br label %20

20:                                               ; preds = %14, %9
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.biltins*, %struct.biltins** %1, align 8
  %23 = getelementptr inbounds %struct.biltins, %struct.biltins* %22, i32 1
  store %struct.biltins* %23, %struct.biltins** %1, align 8
  br label %3

24:                                               ; preds = %3
  ret void
}

declare dso_local i32 @tw_cmd_add(i32) #1

declare dso_local i32 @str2short(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
