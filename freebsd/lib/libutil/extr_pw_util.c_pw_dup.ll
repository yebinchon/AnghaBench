; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_pw_util.c_pw_dup.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_pw_util.c_pw_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.passwd* @pw_dup(%struct.passwd* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca i32, align 4
  store %struct.passwd* %0, %struct.passwd** %3, align 8
  store i32 48, i32* %6, align 4
  %7 = load %struct.passwd*, %struct.passwd** %3, align 8
  %8 = getelementptr inbounds %struct.passwd, %struct.passwd* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.passwd*, %struct.passwd** %3, align 8
  %13 = getelementptr inbounds %struct.passwd, %struct.passwd* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = add nsw i64 %15, 1
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %11, %1
  %22 = load %struct.passwd*, %struct.passwd** %3, align 8
  %23 = getelementptr inbounds %struct.passwd, %struct.passwd* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.passwd*, %struct.passwd** %3, align 8
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = add nsw i64 %30, 1
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %26, %21
  %37 = load %struct.passwd*, %struct.passwd** %3, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.passwd*, %struct.passwd** %3, align 8
  %43 = getelementptr inbounds %struct.passwd, %struct.passwd* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = add nsw i64 %45, 1
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %41, %36
  %52 = load %struct.passwd*, %struct.passwd** %3, align 8
  %53 = getelementptr inbounds %struct.passwd, %struct.passwd* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.passwd*, %struct.passwd** %3, align 8
  %58 = getelementptr inbounds %struct.passwd, %struct.passwd* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strlen(i8* %59)
  %61 = add nsw i64 %60, 1
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %56, %51
  %67 = load %struct.passwd*, %struct.passwd** %3, align 8
  %68 = getelementptr inbounds %struct.passwd, %struct.passwd* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.passwd*, %struct.passwd** %3, align 8
  %73 = getelementptr inbounds %struct.passwd, %struct.passwd* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strlen(i8* %74)
  %76 = add nsw i64 %75, 1
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %71, %66
  %82 = load %struct.passwd*, %struct.passwd** %3, align 8
  %83 = getelementptr inbounds %struct.passwd, %struct.passwd* %82, i32 0, i32 5
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.passwd*, %struct.passwd** %3, align 8
  %88 = getelementptr inbounds %struct.passwd, %struct.passwd* %87, i32 0, i32 5
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @strlen(i8* %89)
  %91 = add nsw i64 %90, 1
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %86, %81
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = call %struct.passwd* @malloc(i64 %98)
  store %struct.passwd* %99, %struct.passwd** %5, align 8
  %100 = icmp eq %struct.passwd* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store %struct.passwd* null, %struct.passwd** %2, align 8
  br label %212

102:                                              ; preds = %96
  %103 = load %struct.passwd*, %struct.passwd** %5, align 8
  %104 = load %struct.passwd*, %struct.passwd** %3, align 8
  %105 = call i32 @memcpy(%struct.passwd* %103, %struct.passwd* %104, i32 48)
  %106 = load %struct.passwd*, %struct.passwd** %5, align 8
  %107 = bitcast %struct.passwd* %106 to i8*
  %108 = getelementptr inbounds i8, i8* %107, i64 48
  store i8* %108, i8** %4, align 8
  %109 = load %struct.passwd*, %struct.passwd** %3, align 8
  %110 = getelementptr inbounds %struct.passwd, %struct.passwd* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %102
  %114 = load i8*, i8** %4, align 8
  %115 = load %struct.passwd*, %struct.passwd** %5, align 8
  %116 = getelementptr inbounds %struct.passwd, %struct.passwd* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load %struct.passwd*, %struct.passwd** %5, align 8
  %118 = getelementptr inbounds %struct.passwd, %struct.passwd* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.passwd*, %struct.passwd** %3, align 8
  %121 = getelementptr inbounds %struct.passwd, %struct.passwd* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i8* @stpcpy(i8* %119, i8* %122)
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  store i8* %124, i8** %4, align 8
  br label %125

125:                                              ; preds = %113, %102
  %126 = load %struct.passwd*, %struct.passwd** %3, align 8
  %127 = getelementptr inbounds %struct.passwd, %struct.passwd* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load i8*, i8** %4, align 8
  %132 = load %struct.passwd*, %struct.passwd** %5, align 8
  %133 = getelementptr inbounds %struct.passwd, %struct.passwd* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load %struct.passwd*, %struct.passwd** %5, align 8
  %135 = getelementptr inbounds %struct.passwd, %struct.passwd* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.passwd*, %struct.passwd** %3, align 8
  %138 = getelementptr inbounds %struct.passwd, %struct.passwd* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i8* @stpcpy(i8* %136, i8* %139)
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  store i8* %141, i8** %4, align 8
  br label %142

142:                                              ; preds = %130, %125
  %143 = load %struct.passwd*, %struct.passwd** %3, align 8
  %144 = getelementptr inbounds %struct.passwd, %struct.passwd* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %159

147:                                              ; preds = %142
  %148 = load i8*, i8** %4, align 8
  %149 = load %struct.passwd*, %struct.passwd** %5, align 8
  %150 = getelementptr inbounds %struct.passwd, %struct.passwd* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  %151 = load %struct.passwd*, %struct.passwd** %5, align 8
  %152 = getelementptr inbounds %struct.passwd, %struct.passwd* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.passwd*, %struct.passwd** %3, align 8
  %155 = getelementptr inbounds %struct.passwd, %struct.passwd* %154, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  %157 = call i8* @stpcpy(i8* %153, i8* %156)
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  store i8* %158, i8** %4, align 8
  br label %159

159:                                              ; preds = %147, %142
  %160 = load %struct.passwd*, %struct.passwd** %3, align 8
  %161 = getelementptr inbounds %struct.passwd, %struct.passwd* %160, i32 0, i32 3
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %176

164:                                              ; preds = %159
  %165 = load i8*, i8** %4, align 8
  %166 = load %struct.passwd*, %struct.passwd** %5, align 8
  %167 = getelementptr inbounds %struct.passwd, %struct.passwd* %166, i32 0, i32 3
  store i8* %165, i8** %167, align 8
  %168 = load %struct.passwd*, %struct.passwd** %5, align 8
  %169 = getelementptr inbounds %struct.passwd, %struct.passwd* %168, i32 0, i32 3
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.passwd*, %struct.passwd** %3, align 8
  %172 = getelementptr inbounds %struct.passwd, %struct.passwd* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = call i8* @stpcpy(i8* %170, i8* %173)
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  store i8* %175, i8** %4, align 8
  br label %176

176:                                              ; preds = %164, %159
  %177 = load %struct.passwd*, %struct.passwd** %3, align 8
  %178 = getelementptr inbounds %struct.passwd, %struct.passwd* %177, i32 0, i32 4
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %193

181:                                              ; preds = %176
  %182 = load i8*, i8** %4, align 8
  %183 = load %struct.passwd*, %struct.passwd** %5, align 8
  %184 = getelementptr inbounds %struct.passwd, %struct.passwd* %183, i32 0, i32 4
  store i8* %182, i8** %184, align 8
  %185 = load %struct.passwd*, %struct.passwd** %5, align 8
  %186 = getelementptr inbounds %struct.passwd, %struct.passwd* %185, i32 0, i32 4
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.passwd*, %struct.passwd** %3, align 8
  %189 = getelementptr inbounds %struct.passwd, %struct.passwd* %188, i32 0, i32 4
  %190 = load i8*, i8** %189, align 8
  %191 = call i8* @stpcpy(i8* %187, i8* %190)
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  store i8* %192, i8** %4, align 8
  br label %193

193:                                              ; preds = %181, %176
  %194 = load %struct.passwd*, %struct.passwd** %3, align 8
  %195 = getelementptr inbounds %struct.passwd, %struct.passwd* %194, i32 0, i32 5
  %196 = load i8*, i8** %195, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %210

198:                                              ; preds = %193
  %199 = load i8*, i8** %4, align 8
  %200 = load %struct.passwd*, %struct.passwd** %5, align 8
  %201 = getelementptr inbounds %struct.passwd, %struct.passwd* %200, i32 0, i32 5
  store i8* %199, i8** %201, align 8
  %202 = load %struct.passwd*, %struct.passwd** %5, align 8
  %203 = getelementptr inbounds %struct.passwd, %struct.passwd* %202, i32 0, i32 5
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.passwd*, %struct.passwd** %3, align 8
  %206 = getelementptr inbounds %struct.passwd, %struct.passwd* %205, i32 0, i32 5
  %207 = load i8*, i8** %206, align 8
  %208 = call i8* @stpcpy(i8* %204, i8* %207)
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  store i8* %209, i8** %4, align 8
  br label %210

210:                                              ; preds = %198, %193
  %211 = load %struct.passwd*, %struct.passwd** %5, align 8
  store %struct.passwd* %211, %struct.passwd** %2, align 8
  br label %212

212:                                              ; preds = %210, %101
  %213 = load %struct.passwd*, %struct.passwd** %2, align 8
  ret %struct.passwd* %213
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.passwd* @malloc(i64) #1

declare dso_local i32 @memcpy(%struct.passwd*, %struct.passwd*, i32) #1

declare dso_local i8* @stpcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
