; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support_nfs4.c_parse_flags_verbose.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support_nfs4.c_parse_flags_verbose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flagnames_struct = type { i32, i32* }

@.str = private unnamed_addr constant [3 x i8] c"/:\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"malformed ACL: \22%s\22 field contains invalid flag \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.flagnames_struct*, i8*, i32*)* @parse_flags_verbose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_flags_verbose(i8* %0, i32* %1, %struct.flagnames_struct* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.flagnames_struct*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.flagnames_struct* %2, %struct.flagnames_struct** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @strdup(i8* %17)
  store i8* %18, i8** %15, align 8
  %19 = load i32*, i32** %11, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %8, align 8
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %73, %5
  %22 = load i8*, i8** %15, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %74

24:                                               ; preds = %21
  %25 = call i8* @strsep(i8** %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %16, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %55, %24
  %27 = load %struct.flagnames_struct*, %struct.flagnames_struct** %9, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %27, i64 %29
  %31 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %58

34:                                               ; preds = %26
  %35 = load %struct.flagnames_struct*, %struct.flagnames_struct** %9, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %35, i64 %37
  %39 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = call i64 @strcmp(i32* %40, i8* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %34
  %45 = load %struct.flagnames_struct*, %struct.flagnames_struct** %9, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %45, i64 %47
  %49 = getelementptr inbounds %struct.flagnames_struct, %struct.flagnames_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %54

54:                                               ; preds = %44, %34
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %26

58:                                               ; preds = %26
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = call i32 @warnx(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %65, i8* %66)
  br label %70

68:                                               ; preds = %61
  %69 = load i32*, i32** %11, align 8
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i8*, i8** %15, align 8
  %72 = call i32 @free(i8* %71)
  store i32 -1, i32* %6, align 4
  br label %77

73:                                               ; preds = %58
  br label %21

74:                                               ; preds = %21
  %75 = load i8*, i8** %15, align 8
  %76 = call i32 @free(i8* %75)
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
