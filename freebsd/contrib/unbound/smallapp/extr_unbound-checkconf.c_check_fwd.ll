; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_check_fwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_check_fwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32 }
%struct.iter_forwards = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Could not set forward zones\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_file*)* @check_fwd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_fwd(%struct.config_file* %0) #0 {
  %2 = alloca %struct.config_file*, align 8
  %3 = alloca %struct.iter_forwards*, align 8
  store %struct.config_file* %0, %struct.config_file** %2, align 8
  %4 = call %struct.iter_forwards* (...) @forwards_create()
  store %struct.iter_forwards* %4, %struct.iter_forwards** %3, align 8
  %5 = load %struct.iter_forwards*, %struct.iter_forwards** %3, align 8
  %6 = icmp ne %struct.iter_forwards* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.iter_forwards*, %struct.iter_forwards** %3, align 8
  %9 = load %struct.config_file*, %struct.config_file** %2, align 8
  %10 = call i32 @forwards_apply_cfg(%struct.iter_forwards* %8, %struct.config_file* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7, %1
  %13 = call i32 @fatal_exit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %7
  %15 = load %struct.iter_forwards*, %struct.iter_forwards** %3, align 8
  %16 = call i32 @forwards_delete(%struct.iter_forwards* %15)
  ret void
}

declare dso_local %struct.iter_forwards* @forwards_create(...) #1

declare dso_local i32 @forwards_apply_cfg(%struct.iter_forwards*, %struct.config_file*) #1

declare dso_local i32 @fatal_exit(i8*) #1

declare dso_local i32 @forwards_delete(%struct.iter_forwards*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
