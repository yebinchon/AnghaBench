; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_update_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_update_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MOUNT_META_OPTION_FSTAB = common dso_local global i8* null, align 8
@MOUNT_META_OPTION_CURRENT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @update_options(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %4, align 8
  br label %100

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** @MOUNT_META_OPTION_FSTAB, align 8
  %21 = call i32 @remopt(i8* %19, i8* %20)
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** @MOUNT_META_OPTION_CURRENT, align 8
  %24 = call i32 @remopt(i8* %22, i8* %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @flags2opts(i32 %25)
  store i8* %26, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %27 = load i8*, i8** %5, align 8
  store i8* %27, i8** %9, align 8
  br label %28

28:                                               ; preds = %54, %18
  %29 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = load i8*, i8** @MOUNT_META_OPTION_FSTAB, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @strcmp(i8* %32, i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @catopt(i8* %37, i8* %38)
  store i8* %39, i8** %11, align 8
  br label %54

40:                                               ; preds = %31
  %41 = load i8*, i8** @MOUNT_META_OPTION_CURRENT, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @strcmp(i8* %41, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i8* @catopt(i8* %46, i8* %47)
  store i8* %48, i8** %11, align 8
  br label %53

49:                                               ; preds = %40
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i8* @catopt(i8* %50, i8* %51)
  store i8* %52, i8** %11, align 8
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %36
  br label %28

55:                                               ; preds = %28
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @free(i8* %58)
  store i8* null, i8** %12, align 8
  %60 = load i8*, i8** %11, align 8
  store i8* %60, i8** %9, align 8
  br label %61

61:                                               ; preds = %92, %55
  %62 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %62, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %96

64:                                               ; preds = %61
  %65 = load i8*, i8** %8, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = add nsw i64 %66, 2
  %68 = add nsw i64 %67, 1
  %69 = call i8* @malloc(i64 %68)
  store i8* %69, i8** %13, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %64
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 @strcpy(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i8*, i8** %13, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @strcat(i8* %76, i8* %77)
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @remopt(i8* %79, i8* %80)
  %82 = load i8*, i8** %13, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i8*, i8** %8, align 8
  %85 = call i64 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %84, i32 2)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %73
  %88 = load i8*, i8** %12, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = call i32 @remopt(i8* %88, i8* %90)
  br label %92

92:                                               ; preds = %87, %73
  %93 = load i8*, i8** %12, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = call i8* @catopt(i8* %93, i8* %94)
  store i8* %95, i8** %12, align 8
  br label %61

96:                                               ; preds = %61
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i8*, i8** %12, align 8
  store i8* %99, i8** %4, align 8
  br label %100

100:                                              ; preds = %96, %16
  %101 = load i8*, i8** %4, align 8
  ret i8* %101
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @remopt(i8*, i8*) #1

declare dso_local i8* @flags2opts(i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @catopt(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
