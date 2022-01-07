; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support_nfs4.c_parse_flags_compact.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support_nfs4.c_parse_flags_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flagnames_struct = type { i8, i32, i32* }

@.str = private unnamed_addr constant [53 x i8] c"malformed ACL: \22%s\22 field contains invalid flag \22%c\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.flagnames_struct*, i8*)* @parse_flags_compact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_flags_compact(i8* %0, i32* %1, %struct.flagnames_struct* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.flagnames_struct*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.flagnames_struct* %2, %struct.flagnames_struct** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %82, %4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %85

23:                                               ; preds = %14
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 45
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %82

32:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %67, %32
  %34 = load %struct.flagnames_struct*, %struct.flagnames_struct** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %34, i64 %36
  %38 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %70

41:                                               ; preds = %33
  %42 = load %struct.flagnames_struct*, %struct.flagnames_struct** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %42, i64 %44
  %46 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %45, i32 0, i32 0
  %47 = load i8, i8* %46, align 8
  %48 = sext i8 %47 to i32
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %48, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %41
  %57 = load %struct.flagnames_struct*, %struct.flagnames_struct** %8, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %57, i64 %59
  %61 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  store i32 1, i32* %12, align 4
  br label %70

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %33

70:                                               ; preds = %56, %33
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = call i32 @warnx(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %74, i8 signext %79)
  store i32 -1, i32* %5, align 4
  br label %85

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %31
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %14

85:                                               ; preds = %73, %22
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @warnx(i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
