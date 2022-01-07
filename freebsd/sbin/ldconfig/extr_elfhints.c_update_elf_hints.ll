; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_elfhints.c_update_elf_hints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_elfhints.c_update_elf_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"warning: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_elf_hints(i8* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @read_elf_hints(i8* %14, i32 0)
  br label %16

16:                                               ; preds = %13, %4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %59, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %17
  %22 = load i8**, i8*** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @stat(i8* %26, %struct.stat* %10)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load i8**, i8*** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %58

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @S_ISREG(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = load i8**, i8*** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @read_dirs_from_file(i8* %42, i8* %47)
  br label %57

49:                                               ; preds = %36
  %50 = load i8*, i8** %5, align 8
  %51 = load i8**, i8*** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @add_dir(i8* %50, i8* %55, i32 0)
  br label %57

57:                                               ; preds = %49, %41
  br label %58

58:                                               ; preds = %57, %29
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %17

62:                                               ; preds = %17
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @write_elf_hints(i8* %63)
  ret void
}

declare dso_local i32 @read_elf_hints(i8*, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @read_dirs_from_file(i8*, i8*) #1

declare dso_local i32 @add_dir(i8*, i8*, i32) #1

declare dso_local i32 @write_elf_hints(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
