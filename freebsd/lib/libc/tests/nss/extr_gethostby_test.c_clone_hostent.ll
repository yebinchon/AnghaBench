; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_clone_hostent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_clone_hostent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8*, i8**, i8**, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostent*, %struct.hostent*)* @clone_hostent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clone_hostent(%struct.hostent* %0, %struct.hostent* %1) #0 {
  %3 = alloca %struct.hostent*, align 8
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.hostent* %0, %struct.hostent** %3, align 8
  store %struct.hostent* %1, %struct.hostent** %4, align 8
  %9 = load %struct.hostent*, %struct.hostent** %3, align 8
  %10 = icmp ne %struct.hostent* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ATF_REQUIRE(i32 %11)
  %13 = load %struct.hostent*, %struct.hostent** %4, align 8
  %14 = icmp ne %struct.hostent* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @ATF_REQUIRE(i32 %15)
  %17 = load %struct.hostent*, %struct.hostent** %3, align 8
  %18 = call i32 @memset(%struct.hostent* %17, i32 0, i32 32)
  %19 = load %struct.hostent*, %struct.hostent** %4, align 8
  %20 = getelementptr inbounds %struct.hostent, %struct.hostent* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load %struct.hostent*, %struct.hostent** %4, align 8
  %25 = getelementptr inbounds %struct.hostent, %struct.hostent* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @strdup(i8* %26)
  %28 = load %struct.hostent*, %struct.hostent** %3, align 8
  %29 = getelementptr inbounds %struct.hostent, %struct.hostent* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.hostent*, %struct.hostent** %3, align 8
  %31 = getelementptr inbounds %struct.hostent, %struct.hostent* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @ATF_REQUIRE(i32 %34)
  br label %36

36:                                               ; preds = %23, %2
  %37 = load %struct.hostent*, %struct.hostent** %4, align 8
  %38 = getelementptr inbounds %struct.hostent, %struct.hostent* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hostent*, %struct.hostent** %3, align 8
  %41 = getelementptr inbounds %struct.hostent, %struct.hostent* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.hostent*, %struct.hostent** %4, align 8
  %43 = getelementptr inbounds %struct.hostent, %struct.hostent* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.hostent*, %struct.hostent** %3, align 8
  %46 = getelementptr inbounds %struct.hostent, %struct.hostent* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.hostent*, %struct.hostent** %4, align 8
  %48 = getelementptr inbounds %struct.hostent, %struct.hostent* %47, i32 0, i32 1
  %49 = load i8**, i8*** %48, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %121

51:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  %52 = load %struct.hostent*, %struct.hostent** %4, align 8
  %53 = getelementptr inbounds %struct.hostent, %struct.hostent* %52, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  store i8** %54, i8*** %5, align 8
  br label %55

55:                                               ; preds = %62, %51
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %5, align 8
  br label %55

65:                                               ; preds = %55
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i8* @calloc(i32 %67, i32 8)
  %69 = bitcast i8* %68 to i8**
  %70 = load %struct.hostent*, %struct.hostent** %3, align 8
  %71 = getelementptr inbounds %struct.hostent, %struct.hostent* %70, i32 0, i32 1
  store i8** %69, i8*** %71, align 8
  %72 = load %struct.hostent*, %struct.hostent** %3, align 8
  %73 = getelementptr inbounds %struct.hostent, %struct.hostent* %72, i32 0, i32 1
  %74 = load i8**, i8*** %73, align 8
  %75 = icmp ne i8** %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @ATF_REQUIRE(i32 %76)
  %78 = load %struct.hostent*, %struct.hostent** %4, align 8
  %79 = getelementptr inbounds %struct.hostent, %struct.hostent* %78, i32 0, i32 1
  %80 = load i8**, i8*** %79, align 8
  store i8** %80, i8*** %5, align 8
  br label %81

81:                                               ; preds = %117, %65
  %82 = load i8**, i8*** %5, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %120

85:                                               ; preds = %81
  %86 = load i8**, i8*** %5, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @strdup(i8* %87)
  %89 = load %struct.hostent*, %struct.hostent** %3, align 8
  %90 = getelementptr inbounds %struct.hostent, %struct.hostent* %89, i32 0, i32 1
  %91 = load i8**, i8*** %90, align 8
  %92 = load i8**, i8*** %5, align 8
  %93 = load %struct.hostent*, %struct.hostent** %4, align 8
  %94 = getelementptr inbounds %struct.hostent, %struct.hostent* %93, i32 0, i32 1
  %95 = load i8**, i8*** %94, align 8
  %96 = ptrtoint i8** %92 to i64
  %97 = ptrtoint i8** %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 8
  %100 = getelementptr inbounds i8*, i8** %91, i64 %99
  store i8* %88, i8** %100, align 8
  %101 = load %struct.hostent*, %struct.hostent** %3, align 8
  %102 = getelementptr inbounds %struct.hostent, %struct.hostent* %101, i32 0, i32 1
  %103 = load i8**, i8*** %102, align 8
  %104 = load i8**, i8*** %5, align 8
  %105 = load %struct.hostent*, %struct.hostent** %4, align 8
  %106 = getelementptr inbounds %struct.hostent, %struct.hostent* %105, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = ptrtoint i8** %104 to i64
  %109 = ptrtoint i8** %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 8
  %112 = getelementptr inbounds i8*, i8** %103, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  %115 = zext i1 %114 to i32
  %116 = call i32 @ATF_REQUIRE(i32 %115)
  br label %117

117:                                              ; preds = %85
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i32 1
  store i8** %119, i8*** %5, align 8
  br label %81

120:                                              ; preds = %81
  br label %121

121:                                              ; preds = %120, %36
  %122 = load %struct.hostent*, %struct.hostent** %4, align 8
  %123 = getelementptr inbounds %struct.hostent, %struct.hostent* %122, i32 0, i32 2
  %124 = load i8**, i8*** %123, align 8
  %125 = icmp ne i8** %124, null
  br i1 %125, label %126, label %207

126:                                              ; preds = %121
  store i32 0, i32* %7, align 4
  %127 = load %struct.hostent*, %struct.hostent** %4, align 8
  %128 = getelementptr inbounds %struct.hostent, %struct.hostent* %127, i32 0, i32 2
  %129 = load i8**, i8*** %128, align 8
  store i8** %129, i8*** %5, align 8
  br label %130

130:                                              ; preds = %137, %126
  %131 = load i8**, i8*** %5, align 8
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %134
  %138 = load i8**, i8*** %5, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i32 1
  store i8** %139, i8*** %5, align 8
  br label %130

140:                                              ; preds = %130
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  %143 = call i8* @calloc(i32 %142, i32 8)
  %144 = bitcast i8* %143 to i8**
  %145 = load %struct.hostent*, %struct.hostent** %3, align 8
  %146 = getelementptr inbounds %struct.hostent, %struct.hostent* %145, i32 0, i32 2
  store i8** %144, i8*** %146, align 8
  %147 = load %struct.hostent*, %struct.hostent** %3, align 8
  %148 = getelementptr inbounds %struct.hostent, %struct.hostent* %147, i32 0, i32 2
  %149 = load i8**, i8*** %148, align 8
  %150 = icmp ne i8** %149, null
  %151 = zext i1 %150 to i32
  %152 = call i32 @ATF_REQUIRE(i32 %151)
  %153 = load %struct.hostent*, %struct.hostent** %4, align 8
  %154 = getelementptr inbounds %struct.hostent, %struct.hostent* %153, i32 0, i32 2
  %155 = load i8**, i8*** %154, align 8
  store i8** %155, i8*** %5, align 8
  br label %156

156:                                              ; preds = %203, %140
  %157 = load i8**, i8*** %5, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %206

160:                                              ; preds = %156
  %161 = load i8**, i8*** %5, align 8
  %162 = load %struct.hostent*, %struct.hostent** %4, align 8
  %163 = getelementptr inbounds %struct.hostent, %struct.hostent* %162, i32 0, i32 2
  %164 = load i8**, i8*** %163, align 8
  %165 = ptrtoint i8** %161 to i64
  %166 = ptrtoint i8** %164 to i64
  %167 = sub i64 %165, %166
  %168 = sdiv exact i64 %167, 8
  store i64 %168, i64* %8, align 8
  %169 = load %struct.hostent*, %struct.hostent** %4, align 8
  %170 = getelementptr inbounds %struct.hostent, %struct.hostent* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i8* @malloc(i32 %171)
  %173 = load %struct.hostent*, %struct.hostent** %3, align 8
  %174 = getelementptr inbounds %struct.hostent, %struct.hostent* %173, i32 0, i32 2
  %175 = load i8**, i8*** %174, align 8
  %176 = load i64, i64* %8, align 8
  %177 = getelementptr inbounds i8*, i8** %175, i64 %176
  store i8* %172, i8** %177, align 8
  %178 = load %struct.hostent*, %struct.hostent** %3, align 8
  %179 = getelementptr inbounds %struct.hostent, %struct.hostent* %178, i32 0, i32 2
  %180 = load i8**, i8*** %179, align 8
  %181 = load i64, i64* %8, align 8
  %182 = getelementptr inbounds i8*, i8** %180, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  %185 = zext i1 %184 to i32
  %186 = call i32 @ATF_REQUIRE(i32 %185)
  %187 = load %struct.hostent*, %struct.hostent** %3, align 8
  %188 = getelementptr inbounds %struct.hostent, %struct.hostent* %187, i32 0, i32 2
  %189 = load i8**, i8*** %188, align 8
  %190 = load i64, i64* %8, align 8
  %191 = getelementptr inbounds i8*, i8** %189, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.hostent*, %struct.hostent** %4, align 8
  %194 = getelementptr inbounds %struct.hostent, %struct.hostent* %193, i32 0, i32 2
  %195 = load i8**, i8*** %194, align 8
  %196 = load i64, i64* %8, align 8
  %197 = getelementptr inbounds i8*, i8** %195, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.hostent*, %struct.hostent** %4, align 8
  %200 = getelementptr inbounds %struct.hostent, %struct.hostent* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @memcpy(i8* %192, i8* %198, i32 %201)
  br label %203

203:                                              ; preds = %160
  %204 = load i8**, i8*** %5, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i32 1
  store i8** %205, i8*** %5, align 8
  br label %156

206:                                              ; preds = %156
  br label %207

207:                                              ; preds = %206, %121
  ret void
}

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @memset(%struct.hostent*, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
