; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getprotoent.c___copy_protoent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getprotoent.c___copy_protoent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i8**, i8*, i32 }

@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__copy_protoent(%struct.protoent* %0, %struct.protoent* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.protoent*, align 8
  %7 = alloca %struct.protoent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.protoent* %0, %struct.protoent** %6, align 8
  store %struct.protoent* %1, %struct.protoent** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 1, i32* %13, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @ALIGN(i8* %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = load i8*, i8** %8, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %44, %4
  %24 = load %struct.protoent*, %struct.protoent** %6, align 8
  %25 = getelementptr inbounds %struct.protoent, %struct.protoent* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %23
  %33 = load %struct.protoent*, %struct.protoent** %6, align 8
  %34 = getelementptr inbounds %struct.protoent, %struct.protoent* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %23

49:                                               ; preds = %23
  %50 = load %struct.protoent*, %struct.protoent** %6, align 8
  %51 = getelementptr inbounds %struct.protoent, %struct.protoent* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i64, i64* %9, align 8
  %66 = trunc i64 %65 to i32
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %49
  %69 = load i32, i32* @ERANGE, align 4
  store i32 %69, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %154

70:                                               ; preds = %49
  %71 = load %struct.protoent*, %struct.protoent** %6, align 8
  %72 = getelementptr inbounds %struct.protoent, %struct.protoent* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.protoent*, %struct.protoent** %7, align 8
  %75 = getelementptr inbounds %struct.protoent, %struct.protoent* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i64 @ALIGN(i8* %76)
  %78 = inttoptr i64 %77 to i8*
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 8
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8* %82, i8** %10, align 8
  %83 = load %struct.protoent*, %struct.protoent** %6, align 8
  %84 = getelementptr inbounds %struct.protoent, %struct.protoent* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = load %struct.protoent*, %struct.protoent** %6, align 8
  %90 = getelementptr inbounds %struct.protoent, %struct.protoent* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strcpy(i8* %88, i8* %91)
  %93 = load i8*, i8** %10, align 8
  %94 = load %struct.protoent*, %struct.protoent** %7, align 8
  %95 = getelementptr inbounds %struct.protoent, %struct.protoent* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i8*, i8** %10, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %10, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call i64 @ALIGN(i8* %100)
  %102 = inttoptr i64 %101 to i8**
  %103 = load %struct.protoent*, %struct.protoent** %7, align 8
  %104 = getelementptr inbounds %struct.protoent, %struct.protoent* %103, i32 0, i32 0
  store i8** %102, i8*** %104, align 8
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %144, %70
  %106 = load %struct.protoent*, %struct.protoent** %6, align 8
  %107 = getelementptr inbounds %struct.protoent, %struct.protoent* %106, i32 0, i32 0
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %147

114:                                              ; preds = %105
  %115 = load %struct.protoent*, %struct.protoent** %6, align 8
  %116 = getelementptr inbounds %struct.protoent, %struct.protoent* %115, i32 0, i32 0
  %117 = load i8**, i8*** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strlen(i8* %121)
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  %124 = load i8*, i8** %10, align 8
  %125 = load %struct.protoent*, %struct.protoent** %6, align 8
  %126 = getelementptr inbounds %struct.protoent, %struct.protoent* %125, i32 0, i32 0
  %127 = load i8**, i8*** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @strcpy(i8* %124, i8* %131)
  %133 = load i8*, i8** %10, align 8
  %134 = load %struct.protoent*, %struct.protoent** %7, align 8
  %135 = getelementptr inbounds %struct.protoent, %struct.protoent* %134, i32 0, i32 0
  %136 = load i8**, i8*** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  store i8* %133, i8** %139, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load i8*, i8** %10, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8* %143, i8** %10, align 8
  br label %144

144:                                              ; preds = %114
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %105

147:                                              ; preds = %105
  %148 = load %struct.protoent*, %struct.protoent** %7, align 8
  %149 = getelementptr inbounds %struct.protoent, %struct.protoent* %148, i32 0, i32 0
  %150 = load i8**, i8*** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  store i8* null, i8** %153, align 8
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %147, %68
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i64 @ALIGN(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
