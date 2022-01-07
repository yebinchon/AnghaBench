; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sparc64/sys/extr___sparc_utrap.c___sparc_utrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sparc64/sys/extr___sparc_utrap.c___sparc_utrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utrapframe = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"__sparc_utrap: fatal \00", align 1
@utrap_msg = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__sparc_utrap(%struct.utrapframe* %0) #0 {
  %2 = alloca %struct.utrapframe*, align 8
  %3 = alloca i32, align 4
  store %struct.utrapframe* %0, %struct.utrapframe** %2, align 8
  %4 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %5 = getelementptr inbounds %struct.utrapframe, %struct.utrapframe* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %16 [
    i32 131, label %7
    i32 130, label %7
    i32 129, label %10
    i32 128, label %13
  ]

7:                                                ; preds = %1, %1
  %8 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %9 = call i32 @__fpu_exception(%struct.utrapframe* %8)
  store i32 %9, i32* %3, align 4
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %12 = call i32 @__emul_insn(%struct.utrapframe* %11)
  store i32 %12, i32* %3, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %15 = call i32 @__unaligned_fixup(%struct.utrapframe* %14)
  store i32 %15, i32* %3, align 4
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %13, %10, %7
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = call i32 @__utrap_write(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = load i8**, i8*** @utrap_msg, align 8
  %23 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %24 = getelementptr inbounds %struct.utrapframe, %struct.utrapframe* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %22, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @__utrap_write(i8* %28)
  %30 = call i32 @__utrap_write(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @__utrap_kill_self(i32 %31)
  br label %33

33:                                               ; preds = %20, %17
  %34 = load %struct.utrapframe*, %struct.utrapframe** %2, align 8
  %35 = call i32 @UF_DONE(%struct.utrapframe* %34)
  ret void
}

declare dso_local i32 @__fpu_exception(%struct.utrapframe*) #1

declare dso_local i32 @__emul_insn(%struct.utrapframe*) #1

declare dso_local i32 @__unaligned_fixup(%struct.utrapframe*) #1

declare dso_local i32 @__utrap_write(i8*) #1

declare dso_local i32 @__utrap_kill_self(i32) #1

declare dso_local i32 @UF_DONE(%struct.utrapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
