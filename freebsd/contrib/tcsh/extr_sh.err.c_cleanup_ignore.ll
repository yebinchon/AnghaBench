; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.err.c_cleanup_ignore.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.err.c_cleanup_ignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup_entry = type { i8*, i32 }

@cleanup_stack = common dso_local global %struct.cleanup_entry* null, align 8
@cleanup_sp = common dso_local global i32 0, align 4
@cleanup_ignore_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup_ignore(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cleanup_entry*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.cleanup_entry*, %struct.cleanup_entry** @cleanup_stack, align 8
  %5 = load i32, i32* @cleanup_sp, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %4, i64 %6
  store %struct.cleanup_entry* %7, %struct.cleanup_entry** %3, align 8
  br label %8

8:                                                ; preds = %24, %1
  %9 = load %struct.cleanup_entry*, %struct.cleanup_entry** %3, align 8
  %10 = load %struct.cleanup_entry*, %struct.cleanup_entry** @cleanup_stack, align 8
  %11 = icmp ne %struct.cleanup_entry* %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load %struct.cleanup_entry*, %struct.cleanup_entry** %3, align 8
  %14 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %13, i32 -1
  store %struct.cleanup_entry* %14, %struct.cleanup_entry** %3, align 8
  %15 = load %struct.cleanup_entry*, %struct.cleanup_entry** %3, align 8
  %16 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load i32, i32* @cleanup_ignore_fn, align 4
  %22 = load %struct.cleanup_entry*, %struct.cleanup_entry** %3, align 8
  %23 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  ret void

24:                                               ; preds = %12
  br label %8

25:                                               ; preds = %8
  %26 = call i32 (...) @abort() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
