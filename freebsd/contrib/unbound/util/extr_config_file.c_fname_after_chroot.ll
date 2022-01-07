; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_fname_after_chroot.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_fname_after_chroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fname_after_chroot(i8* %0, %struct.config_file* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.config_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.config_file* %1, %struct.config_file** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.config_file*, %struct.config_file** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @strlen_after_chroot(i8* %11, %struct.config_file* %12, i32 %13)
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @malloc(i64 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %188

23:                                               ; preds = %3
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 1
  %26 = load %struct.config_file*, %struct.config_file** %6, align 8
  %27 = getelementptr inbounds %struct.config_file, %struct.config_file* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %59

30:                                               ; preds = %23
  %31 = load %struct.config_file*, %struct.config_file** %6, align 8
  %32 = getelementptr inbounds %struct.config_file, %struct.config_file* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %30
  %39 = load %struct.config_file*, %struct.config_file** %6, align 8
  %40 = getelementptr inbounds %struct.config_file, %struct.config_file* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.config_file*, %struct.config_file** %6, align 8
  %44 = getelementptr inbounds %struct.config_file, %struct.config_file* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = call i64 @strncmp(i8* %41, i8* %42, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %38
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @strlcpy(i8* %50, i8* %51, i64 %52)
  %54 = load i8*, i8** %10, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %10, align 8
  store i8* %58, i8** %4, align 8
  br label %188

59:                                               ; preds = %38, %30, %23
  %60 = load %struct.config_file*, %struct.config_file** %6, align 8
  %61 = getelementptr inbounds %struct.config_file, %struct.config_file* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load %struct.config_file*, %struct.config_file** %6, align 8
  %66 = getelementptr inbounds %struct.config_file, %struct.config_file* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load i8*, i8** %10, align 8
  %74 = load %struct.config_file*, %struct.config_file** %6, align 8
  %75 = getelementptr inbounds %struct.config_file, %struct.config_file* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @strlcpy(i8* %73, i8* %76, i64 %77)
  store i32 1, i32* %9, align 4
  br label %79

79:                                               ; preds = %72, %64, %59
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 47
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85, %79
  br label %165

89:                                               ; preds = %85
  %90 = load %struct.config_file*, %struct.config_file** %6, align 8
  %91 = getelementptr inbounds %struct.config_file, %struct.config_file* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %164

94:                                               ; preds = %89
  %95 = load %struct.config_file*, %struct.config_file** %6, align 8
  %96 = getelementptr inbounds %struct.config_file, %struct.config_file* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %164

102:                                              ; preds = %94
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load %struct.config_file*, %struct.config_file** %6, align 8
  %107 = getelementptr inbounds %struct.config_file, %struct.config_file* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 47
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load i8*, i8** %10, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @strlcat(i8* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %115)
  br label %117

117:                                              ; preds = %113, %105, %102
  %118 = load %struct.config_file*, %struct.config_file** %6, align 8
  %119 = getelementptr inbounds %struct.config_file, %struct.config_file* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %156

122:                                              ; preds = %117
  %123 = load %struct.config_file*, %struct.config_file** %6, align 8
  %124 = getelementptr inbounds %struct.config_file, %struct.config_file* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %156

130:                                              ; preds = %122
  %131 = load %struct.config_file*, %struct.config_file** %6, align 8
  %132 = getelementptr inbounds %struct.config_file, %struct.config_file* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.config_file*, %struct.config_file** %6, align 8
  %135 = getelementptr inbounds %struct.config_file, %struct.config_file* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.config_file*, %struct.config_file** %6, align 8
  %138 = getelementptr inbounds %struct.config_file, %struct.config_file* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @strlen(i8* %139)
  %141 = call i64 @strncmp(i8* %133, i8* %136, i32 %140)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %130
  %144 = load i8*, i8** %10, align 8
  %145 = load %struct.config_file*, %struct.config_file** %6, align 8
  %146 = getelementptr inbounds %struct.config_file, %struct.config_file* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.config_file*, %struct.config_file** %6, align 8
  %149 = getelementptr inbounds %struct.config_file, %struct.config_file* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @strlen(i8* %150)
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %147, i64 %152
  %154 = load i64, i64* %8, align 8
  %155 = call i32 @strlcat(i8* %144, i8* %153, i64 %154)
  br label %163

156:                                              ; preds = %130, %122, %117
  %157 = load i8*, i8** %10, align 8
  %158 = load %struct.config_file*, %struct.config_file** %6, align 8
  %159 = getelementptr inbounds %struct.config_file, %struct.config_file* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @strlcat(i8* %157, i8* %160, i64 %161)
  br label %163

163:                                              ; preds = %156, %143
  store i32 1, i32* %9, align 4
  br label %164

164:                                              ; preds = %163, %94, %89
  br label %165

165:                                              ; preds = %164, %88
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  %169 = load i8*, i8** %5, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 0
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 %172, 47
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load i8*, i8** %10, align 8
  %176 = load i64, i64* %8, align 8
  %177 = call i32 @strlcat(i8* %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %176)
  br label %178

178:                                              ; preds = %174, %168, %165
  %179 = load i8*, i8** %10, align 8
  %180 = load i8*, i8** %5, align 8
  %181 = load i64, i64* %8, align 8
  %182 = call i32 @strlcat(i8* %179, i8* %180, i64 %181)
  %183 = load i8*, i8** %10, align 8
  %184 = load i64, i64* %8, align 8
  %185 = sub i64 %184, 1
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  store i8 0, i8* %186, align 1
  %187 = load i8*, i8** %10, align 8
  store i8* %187, i8** %4, align 8
  br label %188

188:                                              ; preds = %178, %49, %22
  %189 = load i8*, i8** %4, align 8
  ret i8* %189
}

declare dso_local i32 @strlen_after_chroot(i8*, %struct.config_file*, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
