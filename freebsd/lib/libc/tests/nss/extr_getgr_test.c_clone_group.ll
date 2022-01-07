; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getgr_test.c_clone_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_getgr_test.c_clone_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8*, i8*, i8**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.group*, %struct.group*)* @clone_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clone_group(%struct.group* %0, %struct.group* %1) #0 {
  %3 = alloca %struct.group*, align 8
  %4 = alloca %struct.group*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store %struct.group* %0, %struct.group** %3, align 8
  store %struct.group* %1, %struct.group** %4, align 8
  %7 = load %struct.group*, %struct.group** %3, align 8
  %8 = icmp ne %struct.group* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @ATF_REQUIRE(i32 %9)
  %11 = load %struct.group*, %struct.group** %4, align 8
  %12 = icmp ne %struct.group* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @ATF_REQUIRE(i32 %13)
  %15 = load %struct.group*, %struct.group** %3, align 8
  %16 = call i32 @memset(%struct.group* %15, i32 0, i32 32)
  %17 = load %struct.group*, %struct.group** %4, align 8
  %18 = getelementptr inbounds %struct.group, %struct.group* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load %struct.group*, %struct.group** %4, align 8
  %23 = getelementptr inbounds %struct.group, %struct.group* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strdup(i8* %24)
  %26 = load %struct.group*, %struct.group** %3, align 8
  %27 = getelementptr inbounds %struct.group, %struct.group* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.group*, %struct.group** %3, align 8
  %29 = getelementptr inbounds %struct.group, %struct.group* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @ATF_REQUIRE(i32 %32)
  br label %34

34:                                               ; preds = %21, %2
  %35 = load %struct.group*, %struct.group** %4, align 8
  %36 = getelementptr inbounds %struct.group, %struct.group* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.group*, %struct.group** %4, align 8
  %41 = getelementptr inbounds %struct.group, %struct.group* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @strdup(i8* %42)
  %44 = load %struct.group*, %struct.group** %3, align 8
  %45 = getelementptr inbounds %struct.group, %struct.group* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.group*, %struct.group** %3, align 8
  %47 = getelementptr inbounds %struct.group, %struct.group* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @ATF_REQUIRE(i32 %50)
  br label %52

52:                                               ; preds = %39, %34
  %53 = load %struct.group*, %struct.group** %4, align 8
  %54 = getelementptr inbounds %struct.group, %struct.group* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.group*, %struct.group** %3, align 8
  %57 = getelementptr inbounds %struct.group, %struct.group* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.group*, %struct.group** %4, align 8
  %59 = getelementptr inbounds %struct.group, %struct.group* %58, i32 0, i32 2
  %60 = load i8**, i8*** %59, align 8
  %61 = icmp ne i8** %60, null
  br i1 %61, label %62, label %131

62:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  %63 = load %struct.group*, %struct.group** %4, align 8
  %64 = getelementptr inbounds %struct.group, %struct.group* %63, i32 0, i32 2
  %65 = load i8**, i8*** %64, align 8
  store i8** %65, i8*** %5, align 8
  br label %66

66:                                               ; preds = %73, %62
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %70
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i32 1
  store i8** %75, i8*** %5, align 8
  br label %66

76:                                               ; preds = %66
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  %79 = call i8** @calloc(i32 %78, i32 8)
  %80 = load %struct.group*, %struct.group** %3, align 8
  %81 = getelementptr inbounds %struct.group, %struct.group* %80, i32 0, i32 2
  store i8** %79, i8*** %81, align 8
  %82 = load %struct.group*, %struct.group** %3, align 8
  %83 = getelementptr inbounds %struct.group, %struct.group* %82, i32 0, i32 2
  %84 = load i8**, i8*** %83, align 8
  %85 = icmp ne i8** %84, null
  %86 = zext i1 %85 to i32
  %87 = call i32 @ATF_REQUIRE(i32 %86)
  %88 = load %struct.group*, %struct.group** %4, align 8
  %89 = getelementptr inbounds %struct.group, %struct.group* %88, i32 0, i32 2
  %90 = load i8**, i8*** %89, align 8
  store i8** %90, i8*** %5, align 8
  br label %91

91:                                               ; preds = %127, %76
  %92 = load i8**, i8*** %5, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %130

95:                                               ; preds = %91
  %96 = load i8**, i8*** %5, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @strdup(i8* %97)
  %99 = load %struct.group*, %struct.group** %3, align 8
  %100 = getelementptr inbounds %struct.group, %struct.group* %99, i32 0, i32 2
  %101 = load i8**, i8*** %100, align 8
  %102 = load i8**, i8*** %5, align 8
  %103 = load %struct.group*, %struct.group** %4, align 8
  %104 = getelementptr inbounds %struct.group, %struct.group* %103, i32 0, i32 2
  %105 = load i8**, i8*** %104, align 8
  %106 = ptrtoint i8** %102 to i64
  %107 = ptrtoint i8** %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 8
  %110 = getelementptr inbounds i8*, i8** %101, i64 %109
  store i8* %98, i8** %110, align 8
  %111 = load %struct.group*, %struct.group** %3, align 8
  %112 = getelementptr inbounds %struct.group, %struct.group* %111, i32 0, i32 2
  %113 = load i8**, i8*** %112, align 8
  %114 = load i8**, i8*** %5, align 8
  %115 = load %struct.group*, %struct.group** %4, align 8
  %116 = getelementptr inbounds %struct.group, %struct.group* %115, i32 0, i32 2
  %117 = load i8**, i8*** %116, align 8
  %118 = ptrtoint i8** %114 to i64
  %119 = ptrtoint i8** %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 8
  %122 = getelementptr inbounds i8*, i8** %113, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  %125 = zext i1 %124 to i32
  %126 = call i32 @ATF_REQUIRE(i32 %125)
  br label %127

127:                                              ; preds = %95
  %128 = load i8**, i8*** %5, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i32 1
  store i8** %129, i8*** %5, align 8
  br label %91

130:                                              ; preds = %91
  br label %131

131:                                              ; preds = %130, %52
  ret void
}

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @memset(%struct.group*, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8** @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
