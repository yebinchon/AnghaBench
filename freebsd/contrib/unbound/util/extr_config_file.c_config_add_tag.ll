; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_add_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_add_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_add_tag(%struct.config_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store %struct.config_file* %0, %struct.config_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.config_file*, %struct.config_file** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @find_tag_id(%struct.config_file* %8, i8* %9)
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %67

13:                                               ; preds = %2
  %14 = load %struct.config_file*, %struct.config_file** %4, align 8
  %15 = getelementptr inbounds %struct.config_file, %struct.config_file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = call i64 @malloc(i32 %20)
  %22 = inttoptr i64 %21 to i8**
  store i8** %22, i8*** %6, align 8
  %23 = load i8**, i8*** %6, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %67

26:                                               ; preds = %13
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @strdup(i8* %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i8**, i8*** %6, align 8
  %33 = call i32 @free(i8** %32)
  store i32 0, i32* %3, align 4
  br label %67

34:                                               ; preds = %26
  %35 = load %struct.config_file*, %struct.config_file** %4, align 8
  %36 = getelementptr inbounds %struct.config_file, %struct.config_file* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = icmp ne i8** %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load i8**, i8*** %6, align 8
  %41 = load %struct.config_file*, %struct.config_file** %4, align 8
  %42 = getelementptr inbounds %struct.config_file, %struct.config_file* %41, i32 0, i32 1
  %43 = load i8**, i8*** %42, align 8
  %44 = load %struct.config_file*, %struct.config_file** %4, align 8
  %45 = getelementptr inbounds %struct.config_file, %struct.config_file* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 8, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memcpy(i8** %40, i8** %43, i32 %49)
  %51 = load %struct.config_file*, %struct.config_file** %4, align 8
  %52 = getelementptr inbounds %struct.config_file, %struct.config_file* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = call i32 @free(i8** %53)
  br label %55

55:                                               ; preds = %39, %34
  %56 = load i8*, i8** %7, align 8
  %57 = load i8**, i8*** %6, align 8
  %58 = load %struct.config_file*, %struct.config_file** %4, align 8
  %59 = getelementptr inbounds %struct.config_file, %struct.config_file* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8*, i8** %57, i64 %62
  store i8* %56, i8** %63, align 8
  %64 = load i8**, i8*** %6, align 8
  %65 = load %struct.config_file*, %struct.config_file** %4, align 8
  %66 = getelementptr inbounds %struct.config_file, %struct.config_file* %65, i32 0, i32 1
  store i8** %64, i8*** %66, align 8
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %55, %31, %25, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @find_tag_id(%struct.config_file*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
