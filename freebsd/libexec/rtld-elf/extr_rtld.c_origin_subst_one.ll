; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_origin_subst_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_origin_subst_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*, i8*, i8*, i8*, i32)* @origin_subst_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @origin_subst_one(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %17, align 4
  %23 = load i8*, i8** %8, align 8
  store i8* %23, i8** %12, align 8
  store i32 0, i32* %18, align 4
  br label %24

24:                                               ; preds = %32, %5
  %25 = load i8*, i8** %12, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i8* @strstr(i8* %25, i8* %26)
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %39

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load i8*, i8** %13, align 8
  %34 = load i32, i32* %17, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8* %36, i8** %12, align 8
  %37 = load i32, i32* %18, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %18, align 4
  br label %24

39:                                               ; preds = %30
  %40 = load i32, i32* %18, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = call i32 @obj_resolve_origin(%struct.TYPE_4__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %45, %39
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i8*, i8** %8, align 8
  br label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %8, align 8
  %56 = call i8* @xstrdup(i8* %55)
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi i8* [ %53, %52 ], [ %56, %54 ]
  store i8* %58, i8** %6, align 8
  br label %133

59:                                               ; preds = %45, %42
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = icmp ne %struct.TYPE_4__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @strlen(i8* %67)
  store i32 %68, i32* %16, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @strlen(i8* %69)
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %17, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load i32, i32* %18, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %71, %76
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %20, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i8* @xmalloc(i32 %79)
  store i8* %80, i8** %14, align 8
  %81 = load i8*, i8** %8, align 8
  store i8* %81, i8** %12, align 8
  %82 = load i8*, i8** %14, align 8
  store i8* %82, i8** %15, align 8
  %83 = load i8*, i8** %15, align 8
  store i8 0, i8* %83, align 1
  br label %84

84:                                               ; preds = %121, %66
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i8* @strstr(i8* %85, i8* %86)
  store i8* %87, i8** %13, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %120

90:                                               ; preds = %84
  %91 = load i8*, i8** %15, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32 @memcpy(i8* %91, i8* %92, i32 %98)
  %100 = load i8*, i8** %13, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = load i8*, i8** %15, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  store i8* %106, i8** %15, align 8
  %107 = load i8*, i8** %15, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @memcpy(i8* %107, i8* %108, i32 %109)
  %111 = load i32, i32* %16, align 4
  %112 = load i8*, i8** %15, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %15, align 8
  %115 = load i8*, i8** %15, align 8
  store i8 0, i8* %115, align 1
  %116 = load i8*, i8** %13, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  store i8* %119, i8** %12, align 8
  br label %121

120:                                              ; preds = %84
  br label %122

121:                                              ; preds = %90
  br label %84

122:                                              ; preds = %120
  %123 = load i8*, i8** %15, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 @strcat(i8* %123, i8* %124)
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 @free(i8* %129)
  br label %131

131:                                              ; preds = %128, %122
  %132 = load i8*, i8** %14, align 8
  store i8* %132, i8** %6, align 8
  br label %133

133:                                              ; preds = %131, %57
  %134 = load i8*, i8** %6, align 8
  ret i8* %134
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @obj_resolve_origin(%struct.TYPE_4__*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
