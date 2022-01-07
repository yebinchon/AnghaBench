; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_scanner.c_lex_push_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_scanner.c_lex_push_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FILE_INFO = type { %struct.FILE_INFO* }

@lex_stack = common dso_local global %struct.FILE_INFO* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lex_push_file(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.FILE_INFO*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.FILE_INFO* null, %struct.FILE_INFO** %5, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* null, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct.FILE_INFO* @lex_open(i8* %9, i8* %10)
  store %struct.FILE_INFO* %11, %struct.FILE_INFO** %5, align 8
  %12 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %13 = icmp ne %struct.FILE_INFO* null, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load %struct.FILE_INFO*, %struct.FILE_INFO** @lex_stack, align 8
  %16 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %17 = getelementptr inbounds %struct.FILE_INFO, %struct.FILE_INFO* %16, i32 0, i32 0
  store %struct.FILE_INFO* %15, %struct.FILE_INFO** %17, align 8
  %18 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  store %struct.FILE_INFO* %18, %struct.FILE_INFO** @lex_stack, align 8
  br label %19

19:                                               ; preds = %14, %8
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.FILE_INFO*, %struct.FILE_INFO** %5, align 8
  %22 = icmp ne %struct.FILE_INFO* null, %21
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local %struct.FILE_INFO* @lex_open(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
