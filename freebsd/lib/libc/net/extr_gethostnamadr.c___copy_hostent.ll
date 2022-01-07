; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostnamadr.c___copy_hostent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostnamadr.c___copy_hostent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8**, i32, i8**, i8*, i32 }

@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__copy_hostent(%struct.hostent* %0, %struct.hostent* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.hostent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hostent* %0, %struct.hostent** %6, align 8
  store %struct.hostent* %1, %struct.hostent** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 2, i32* %14, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @ALIGN(i8* %16)
  %18 = inttoptr i64 %17 to i8*
  %19 = load i8*, i8** %8, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %39, %4
  %25 = load %struct.hostent*, %struct.hostent** %6, align 8
  %26 = getelementptr inbounds %struct.hostent, %struct.hostent* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %24
  %34 = load %struct.hostent*, %struct.hostent** %6, align 8
  %35 = getelementptr inbounds %struct.hostent, %struct.hostent* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %15, align 4
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4
  br label %24

44:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %66, %44
  %46 = load %struct.hostent*, %struct.hostent** %6, align 8
  %47 = getelementptr inbounds %struct.hostent, %struct.hostent* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %45
  %55 = load %struct.hostent*, %struct.hostent** %6, align 8
  %56 = getelementptr inbounds %struct.hostent, %struct.hostent* %55, i32 0, i32 2
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %45

71:                                               ; preds = %45
  %72 = load %struct.hostent*, %struct.hostent** %6, align 8
  %73 = getelementptr inbounds %struct.hostent, %struct.hostent* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %9, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %71
  %91 = load i32, i32* @ERANGE, align 4
  store i32 %91, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %230

92:                                               ; preds = %71
  %93 = load %struct.hostent*, %struct.hostent** %6, align 8
  %94 = getelementptr inbounds %struct.hostent, %struct.hostent* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.hostent*, %struct.hostent** %7, align 8
  %97 = getelementptr inbounds %struct.hostent, %struct.hostent* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.hostent*, %struct.hostent** %6, align 8
  %99 = getelementptr inbounds %struct.hostent, %struct.hostent* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.hostent*, %struct.hostent** %7, align 8
  %102 = getelementptr inbounds %struct.hostent, %struct.hostent* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  store i32 %100, i32* %13, align 4
  %103 = load i8*, i8** %8, align 8
  %104 = call i64 @ALIGN(i8* %103)
  %105 = inttoptr i64 %104 to i8**
  store i8** %105, i8*** %11, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = call i64 @ALIGN(i8* %106)
  %108 = inttoptr i64 %107 to i8*
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 8
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  store i8* %112, i8** %10, align 8
  %113 = load i8**, i8*** %11, align 8
  %114 = load %struct.hostent*, %struct.hostent** %7, align 8
  %115 = getelementptr inbounds %struct.hostent, %struct.hostent* %114, i32 0, i32 0
  store i8** %113, i8*** %115, align 8
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %147, %92
  %117 = load %struct.hostent*, %struct.hostent** %6, align 8
  %118 = getelementptr inbounds %struct.hostent, %struct.hostent* %117, i32 0, i32 0
  %119 = load i8**, i8*** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %152

125:                                              ; preds = %116
  %126 = load i8*, i8** %10, align 8
  %127 = load %struct.hostent*, %struct.hostent** %6, align 8
  %128 = getelementptr inbounds %struct.hostent, %struct.hostent* %127, i32 0, i32 0
  %129 = load i8**, i8*** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @memcpy(i8* %126, i8* %133, i32 %134)
  %136 = load i8*, i8** %10, align 8
  %137 = load %struct.hostent*, %struct.hostent** %7, align 8
  %138 = getelementptr inbounds %struct.hostent, %struct.hostent* %137, i32 0, i32 0
  %139 = load i8**, i8*** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  store i8* %136, i8** %142, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load i8*, i8** %10, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %10, align 8
  br label %147

147:                                              ; preds = %125
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  %150 = load i8**, i8*** %11, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i32 1
  store i8** %151, i8*** %11, align 8
  br label %116

152:                                              ; preds = %116
  %153 = load %struct.hostent*, %struct.hostent** %7, align 8
  %154 = getelementptr inbounds %struct.hostent, %struct.hostent* %153, i32 0, i32 0
  %155 = load i8**, i8*** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  store i8* null, i8** %158, align 8
  %159 = load i8**, i8*** %11, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i32 1
  store i8** %160, i8*** %11, align 8
  %161 = load %struct.hostent*, %struct.hostent** %6, align 8
  %162 = getelementptr inbounds %struct.hostent, %struct.hostent* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @strlen(i8* %163)
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  %166 = load i8*, i8** %10, align 8
  %167 = load %struct.hostent*, %struct.hostent** %6, align 8
  %168 = getelementptr inbounds %struct.hostent, %struct.hostent* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @strcpy(i8* %166, i8* %169)
  %171 = load i8*, i8** %10, align 8
  %172 = load %struct.hostent*, %struct.hostent** %7, align 8
  %173 = getelementptr inbounds %struct.hostent, %struct.hostent* %172, i32 0, i32 3
  store i8* %171, i8** %173, align 8
  %174 = load i32, i32* %13, align 4
  %175 = load i8*, i8** %10, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %10, align 8
  %178 = load i8**, i8*** %11, align 8
  %179 = load %struct.hostent*, %struct.hostent** %7, align 8
  %180 = getelementptr inbounds %struct.hostent, %struct.hostent* %179, i32 0, i32 2
  store i8** %178, i8*** %180, align 8
  store i32 0, i32* %12, align 4
  br label %181

181:                                              ; preds = %220, %152
  %182 = load %struct.hostent*, %struct.hostent** %6, align 8
  %183 = getelementptr inbounds %struct.hostent, %struct.hostent* %182, i32 0, i32 2
  %184 = load i8**, i8*** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %223

190:                                              ; preds = %181
  %191 = load %struct.hostent*, %struct.hostent** %6, align 8
  %192 = getelementptr inbounds %struct.hostent, %struct.hostent* %191, i32 0, i32 2
  %193 = load i8**, i8*** %192, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @strlen(i8* %197)
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %13, align 4
  %200 = load i8*, i8** %10, align 8
  %201 = load %struct.hostent*, %struct.hostent** %6, align 8
  %202 = getelementptr inbounds %struct.hostent, %struct.hostent* %201, i32 0, i32 2
  %203 = load i8**, i8*** %202, align 8
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @strcpy(i8* %200, i8* %207)
  %209 = load i8*, i8** %10, align 8
  %210 = load %struct.hostent*, %struct.hostent** %7, align 8
  %211 = getelementptr inbounds %struct.hostent, %struct.hostent* %210, i32 0, i32 2
  %212 = load i8**, i8*** %211, align 8
  %213 = load i32, i32* %12, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8*, i8** %212, i64 %214
  store i8* %209, i8** %215, align 8
  %216 = load i32, i32* %13, align 4
  %217 = load i8*, i8** %10, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8* %219, i8** %10, align 8
  br label %220

220:                                              ; preds = %190
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %12, align 4
  br label %181

223:                                              ; preds = %181
  %224 = load %struct.hostent*, %struct.hostent** %7, align 8
  %225 = getelementptr inbounds %struct.hostent, %struct.hostent* %224, i32 0, i32 2
  %226 = load i8**, i8*** %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  store i8* null, i8** %229, align 8
  store i32 0, i32* %5, align 4
  br label %230

230:                                              ; preds = %223, %90
  %231 = load i32, i32* %5, align 4
  ret i32 %231
}

declare dso_local i64 @ALIGN(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
