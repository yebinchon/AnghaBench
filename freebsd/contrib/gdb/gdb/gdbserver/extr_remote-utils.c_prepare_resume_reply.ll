; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_remote-utils.c_prepare_resume_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_remote-utils.c_prepare_resume_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inferior_list_entry = type { i32 }

@gdbserver_expedite_regs = common dso_local global i8** null, align 8
@using_threads = common dso_local global i64 0, align 8
@current_inferior = common dso_local global i64 0, align 8
@thread_from_wait = common dso_local global i32 0, align 4
@debug_threads = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Writing resume reply for %d\0A\0A\00", align 1
@general_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"thread:%x;\00", align 1
@old_thread_from_wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_resume_reply(i8* %0, i8 signext %1, i8 zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %10 = load i8, i8* %5, align 1
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %4, align 8
  store i8 %10, i8* %11, align 1
  %13 = load i8, i8* %6, align 1
  %14 = call i64 @target_signal_from_host(i8 zeroext %13)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 240
  %18 = ashr i32 %17, 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i8* @tohex(i32 %19)
  %21 = ptrtoint i8* %20 to i8
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  store i8 %21, i8* %22, align 1
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 15
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @tohex(i32 %26)
  %28 = ptrtoint i8* %27 to i8
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  store i8 %28, i8* %29, align 1
  %31 = load i8, i8* %5, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 84
  br i1 %33, label %34, label %74

34:                                               ; preds = %3
  %35 = load i8**, i8*** @gdbserver_expedite_regs, align 8
  store i8** %35, i8*** %9, align 8
  br label %36

36:                                               ; preds = %40, %34
  %37 = load i8**, i8*** %9, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i8**, i8*** %9, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @find_regno(i8* %42)
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @outreg(i32 %43, i8* %44)
  store i8* %45, i8** %4, align 8
  %46 = load i8**, i8*** %9, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %9, align 8
  br label %36

48:                                               ; preds = %36
  %49 = load i64, i64* @using_threads, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = load i64, i64* @current_inferior, align 8
  %53 = inttoptr i64 %52 to %struct.inferior_list_entry*
  %54 = getelementptr inbounds %struct.inferior_list_entry, %struct.inferior_list_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* @thread_from_wait, align 4
  %56 = load i64, i64* @debug_threads, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @stderr, align 4
  %60 = load i32, i32* @thread_from_wait, align 4
  %61 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %51
  %63 = load i32, i32* @thread_from_wait, align 4
  store i32 %63, i32* @general_thread, align 4
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* @thread_from_wait, align 4
  %66 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = load i8*, i8** %4, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %4, align 8
  %72 = load i32, i32* @thread_from_wait, align 4
  store i32 %72, i32* @old_thread_from_wait, align 4
  br label %73

73:                                               ; preds = %62, %48
  br label %74

74:                                               ; preds = %73, %3
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %4, align 8
  store i8 0, i8* %75, align 1
  ret void
}

declare dso_local i64 @target_signal_from_host(i8 zeroext) #1

declare dso_local i8* @tohex(i32) #1

declare dso_local i8* @outreg(i32, i8*) #1

declare dso_local i32 @find_regno(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
