; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_comnd.c_print_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_comnd.c_print_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i8*, i8*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"    %s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" %-15s - %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd*)* @print_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_usage(%struct.cmd* %0) #0 {
  %2 = alloca %struct.cmd*, align 8
  store %struct.cmd* %0, %struct.cmd** %2, align 8
  %3 = load i32, i32* @stderr, align 4
  %4 = call i8* (...) @getprogname()
  %5 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load %struct.cmd*, %struct.cmd** %2, align 8
  %7 = getelementptr inbounds %struct.cmd, %struct.cmd* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @print_tree(i32 %8)
  %10 = load i32, i32* @stderr, align 4
  %11 = load %struct.cmd*, %struct.cmd** %2, align 8
  %12 = getelementptr inbounds %struct.cmd, %struct.cmd* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.cmd*, %struct.cmd** %2, align 8
  %15 = getelementptr inbounds %struct.cmd, %struct.cmd* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %13, i8* %16)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @getprogname(...) #1

declare dso_local i32 @print_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
