; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_create_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_create_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"vfork\00", align 1
@PT_TRACE_ME = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Cannot exec %s: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @fbsd_create_inferior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbsd_create_inferior(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = call i32 @vfork() #4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @perror_with_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i32, i32* @PT_TRACE_ME, align 4
  %17 = call i32 @ptrace(i32 %16, i32 0, i32 0, i32 0)
  %18 = call i32 @setpgid(i32 0, i32 0)
  %19 = load i8*, i8** %3, align 8
  %20 = load i8**, i8*** %4, align 8
  %21 = call i32 @execv(i8* %19, i8** %20)
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @errno, align 4
  %25 = call i8* @strerror(i32 %24)
  %26 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %25)
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fflush(i32 %27)
  %29 = call i32 @_exit(i32 127) #5
  unreachable

30:                                               ; preds = %12
  %31 = load i32, i32* %6, align 4
  %32 = call i8* @add_process(i32 %31)
  store i8* %32, i8** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @add_thread(i32 %33, i8* %34)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

; Function Attrs: returns_twice
declare dso_local i32 @vfork() #1

declare dso_local i32 @perror_with_name(i8*) #2

declare dso_local i32 @ptrace(i32, i32, i32, i32) #2

declare dso_local i32 @setpgid(i32, i32) #2

declare dso_local i32 @execv(i8*, i8**) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @fflush(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i8* @add_process(i32) #2

declare dso_local i32 @add_thread(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
