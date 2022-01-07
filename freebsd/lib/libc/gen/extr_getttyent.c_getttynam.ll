; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getttyent.c_getttynam.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getttyent.c_getttynam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttyent = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ttyent* @getttynam(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ttyent*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 5
  store i8* %9, i8** %2, align 8
  br label %10

10:                                               ; preds = %7, %1
  %11 = call i32 (...) @setttyent()
  br label %12

12:                                               ; preds = %23, %10
  %13 = call %struct.ttyent* (...) @getttyent()
  store %struct.ttyent* %13, %struct.ttyent** %3, align 8
  %14 = icmp ne %struct.ttyent* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load i8*, i8** %2, align 8
  %17 = load %struct.ttyent*, %struct.ttyent** %3, align 8
  %18 = getelementptr inbounds %struct.ttyent, %struct.ttyent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strcmp(i8* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %24

23:                                               ; preds = %15
  br label %12

24:                                               ; preds = %22, %12
  %25 = call i32 (...) @endttyent()
  %26 = load %struct.ttyent*, %struct.ttyent** %3, align 8
  ret %struct.ttyent* %26
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @setttyent(...) #1

declare dso_local %struct.ttyent* @getttyent(...) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @endttyent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
