; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit_readline.c_readline_cmd_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_edit_readline.c_readline_cmd_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@edit_cb_ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @readline_cmd_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readline_cmd_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %32

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %15, %11
  %13 = call i64 (...) @next_history()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %12

16:                                               ; preds = %12
  %17 = call %struct.TYPE_3__* (...) @previous_history()
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %3, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = icmp eq %struct.TYPE_3__* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %2, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @os_strcmp(i8* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %16
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @add_history(i8* %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = call i64 (...) @next_history()
  br label %32

32:                                               ; preds = %30, %6, %1
  %33 = load i8*, i8** %2, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @edit_cb_ctx, align 4
  %37 = call i32 @edit_eof_cb(i32 %36)
  br label %44

38:                                               ; preds = %32
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @trunc_nl(i8* %39)
  %41 = load i32, i32* @edit_cb_ctx, align 4
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @edit_cmd_cb(i32 %41, i8* %42)
  br label %44

44:                                               ; preds = %38, %35
  ret void
}

declare dso_local i64 @next_history(...) #1

declare dso_local %struct.TYPE_3__* @previous_history(...) #1

declare dso_local i64 @os_strcmp(i8*, i32) #1

declare dso_local i32 @add_history(i8*) #1

declare dso_local i32 @edit_eof_cb(i32) #1

declare dso_local i32 @trunc_nl(i8*) #1

declare dso_local i32 @edit_cmd_cb(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
