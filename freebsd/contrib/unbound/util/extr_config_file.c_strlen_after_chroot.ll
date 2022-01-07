; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_strlen_after_chroot.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_strlen_after_chroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.config_file*, i32)* @strlen_after_chroot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @strlen_after_chroot(i8* %0, %struct.config_file* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.config_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.config_file* %1, %struct.config_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.config_file*, %struct.config_file** %6, align 8
  %11 = getelementptr inbounds %struct.config_file, %struct.config_file* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %36

14:                                               ; preds = %3
  %15 = load %struct.config_file*, %struct.config_file** %6, align 8
  %16 = getelementptr inbounds %struct.config_file, %struct.config_file* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %14
  %23 = load %struct.config_file*, %struct.config_file** %6, align 8
  %24 = getelementptr inbounds %struct.config_file, %struct.config_file* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.config_file*, %struct.config_file** %6, align 8
  %28 = getelementptr inbounds %struct.config_file, %struct.config_file* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = call i64 @strncmp(i8* %25, i8* %26, i64 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strlen(i8* %34)
  store i64 %35, i64* %4, align 8
  br label %158

36:                                               ; preds = %22, %14, %3
  %37 = load %struct.config_file*, %struct.config_file** %6, align 8
  %38 = getelementptr inbounds %struct.config_file, %struct.config_file* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.config_file*, %struct.config_file** %6, align 8
  %43 = getelementptr inbounds %struct.config_file, %struct.config_file* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.config_file*, %struct.config_file** %6, align 8
  %51 = getelementptr inbounds %struct.config_file, %struct.config_file* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %56

56:                                               ; preds = %49, %41, %36
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 47
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62, %56
  br label %140

66:                                               ; preds = %62
  %67 = load %struct.config_file*, %struct.config_file** %6, align 8
  %68 = getelementptr inbounds %struct.config_file, %struct.config_file* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %139

71:                                               ; preds = %66
  %72 = load %struct.config_file*, %struct.config_file** %6, align 8
  %73 = getelementptr inbounds %struct.config_file, %struct.config_file* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %139

79:                                               ; preds = %71
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load %struct.config_file*, %struct.config_file** %6, align 8
  %84 = getelementptr inbounds %struct.config_file, %struct.config_file* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 47
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i64, i64* %8, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %8, align 8
  br label %93

93:                                               ; preds = %90, %82, %79
  %94 = load %struct.config_file*, %struct.config_file** %6, align 8
  %95 = getelementptr inbounds %struct.config_file, %struct.config_file* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %131

98:                                               ; preds = %93
  %99 = load %struct.config_file*, %struct.config_file** %6, align 8
  %100 = getelementptr inbounds %struct.config_file, %struct.config_file* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %98
  %107 = load %struct.config_file*, %struct.config_file** %6, align 8
  %108 = getelementptr inbounds %struct.config_file, %struct.config_file* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.config_file*, %struct.config_file** %6, align 8
  %111 = getelementptr inbounds %struct.config_file, %struct.config_file* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.config_file*, %struct.config_file** %6, align 8
  %114 = getelementptr inbounds %struct.config_file, %struct.config_file* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @strlen(i8* %115)
  %117 = call i64 @strncmp(i8* %109, i8* %112, i64 %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %106
  %120 = load %struct.config_file*, %struct.config_file** %6, align 8
  %121 = getelementptr inbounds %struct.config_file, %struct.config_file* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @strlen(i8* %122)
  %124 = load %struct.config_file*, %struct.config_file** %6, align 8
  %125 = getelementptr inbounds %struct.config_file, %struct.config_file* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @strlen(i8* %126)
  %128 = sub i64 %123, %127
  %129 = load i64, i64* %8, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %8, align 8
  br label %138

131:                                              ; preds = %106, %98, %93
  %132 = load %struct.config_file*, %struct.config_file** %6, align 8
  %133 = getelementptr inbounds %struct.config_file, %struct.config_file* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @strlen(i8* %134)
  %136 = load i64, i64* %8, align 8
  %137 = add i64 %136, %135
  store i64 %137, i64* %8, align 8
  br label %138

138:                                              ; preds = %131, %119
  store i32 1, i32* %9, align 4
  br label %139

139:                                              ; preds = %138, %71, %66
  br label %140

140:                                              ; preds = %139, %65
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load i8*, i8** %5, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %147, 47
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load i64, i64* %8, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %8, align 8
  br label %152

152:                                              ; preds = %149, %143, %140
  %153 = load i8*, i8** %5, align 8
  %154 = call i64 @strlen(i8* %153)
  %155 = load i64, i64* %8, align 8
  %156 = add i64 %155, %154
  store i64 %156, i64* %8, align 8
  %157 = load i64, i64* %8, align 8
  store i64 %157, i64* %4, align 8
  br label %158

158:                                              ; preds = %152, %33
  %159 = load i64, i64* %4, align 8
  ret i64 %159
}

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
