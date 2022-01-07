; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pam_modules/pam_passwdqc/extr_passwdqc_check.c_is_based.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pam_modules/pam_passwdqc/extr_passwdqc_check.c_is_based.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i8*, i8*)* @is_based to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_based(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %139

21:                                               ; preds = %4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %139

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strstr(i8* %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %139

33:                                               ; preds = %27
  store i8* null, i8** %10, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @strlen(i8* %34)
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %133, %33
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  %43 = icmp sle i32 %37, %42
  br i1 %43, label %44, label %136

44:                                               ; preds = %36
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %129, %44
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %11, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %132

54:                                               ; preds = %48
  store i32 0, i32* %15, align 4
  %55 = load i8*, i8** %7, align 8
  store i8* %55, i8** %14, align 8
  br label %56

56:                                               ; preds = %121, %54
  %57 = load i8*, i8** %14, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %124

60:                                               ; preds = %56
  %61 = load i8*, i8** %14, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %63, %69
  br i1 %70, label %71, label %120

71:                                               ; preds = %60
  %72 = load i8*, i8** %14, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @strncmp(i8* %72, i8* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %120, label %80

80:                                               ; preds = %71
  store i32 1, i32* %15, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i8* @malloc(i32 %85)
  store i8* %86, i8** %10, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32 1, i32* %5, align 4
  br label %139

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %80
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @memcpy(i8* %91, i8* %92, i32 %93)
  %95 = load i8*, i8** %10, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8*, i8** %9, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %99, i64 %103
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %107, %108
  %110 = sub nsw i32 %106, %109
  %111 = call i32 @memcpy(i8* %98, i8* %104, i32 %110)
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = call i64 @is_simple(%struct.TYPE_4__* %112, i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %90
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @clean(i8* %117)
  store i32 1, i32* %5, align 4
  br label %139

119:                                              ; preds = %90
  br label %120

120:                                              ; preds = %119, %71, %60
  br label %121

121:                                              ; preds = %120
  %122 = load i8*, i8** %14, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %14, align 8
  br label %56

124:                                              ; preds = %56
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  br label %132

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %48

132:                                              ; preds = %127, %48
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %36

136:                                              ; preds = %36
  %137 = load i8*, i8** %10, align 8
  %138 = call i32 @clean(i8* %137)
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %136, %116, %88, %32, %26, %20
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @is_simple(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @clean(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
