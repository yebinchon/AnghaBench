; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_do_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_do_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libworker = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"unknown command for bg worker %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libworker*, i32*, i32)* @libworker_do_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libworker_do_cmd(%struct.libworker* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.libworker*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.libworker* %0, %struct.libworker** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @context_serial_getcmd(i32* %7, i32 %8)
  switch i32 %9, label %10 [
    i32 131, label %11
    i32 128, label %16
    i32 129, label %23
    i32 130, label %28
  ]

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %3, %10
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @context_serial_getcmd(i32* %12, i32 %13)
  %15 = call i32 @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %3, %11
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @free(i32* %17)
  %19 = load %struct.libworker*, %struct.libworker** %4, align 8
  %20 = getelementptr inbounds %struct.libworker, %struct.libworker* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @comm_base_exit(i32 %21)
  br label %33

23:                                               ; preds = %3
  %24 = load %struct.libworker*, %struct.libworker** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @handle_newq(%struct.libworker* %24, i32* %25, i32 %26)
  br label %33

28:                                               ; preds = %3
  %29 = load %struct.libworker*, %struct.libworker** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @handle_cancel(%struct.libworker* %29, i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %23, %16
  ret void
}

declare dso_local i32 @context_serial_getcmd(i32*, i32) #1

declare dso_local i32 @log_err(i8*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @comm_base_exit(i32) #1

declare dso_local i32 @handle_newq(%struct.libworker*, i32*, i32) #1

declare dso_local i32 @handle_cancel(%struct.libworker*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
