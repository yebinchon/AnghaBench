; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getnetnamadr.c___copy_netent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getnetnamadr.c___copy_netent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netent = type { i8**, i8*, i32, i32 }

@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__copy_netent(%struct.netent* %0, %struct.netent* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.netent*, align 8
  %7 = alloca %struct.netent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.netent* %0, %struct.netent** %6, align 8
  store %struct.netent* %1, %struct.netent** %7, align 8
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
  %24 = load %struct.netent*, %struct.netent** %6, align 8
  %25 = getelementptr inbounds %struct.netent, %struct.netent* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %23
  %33 = load %struct.netent*, %struct.netent** %6, align 8
  %34 = getelementptr inbounds %struct.netent, %struct.netent* %33, i32 0, i32 0
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
  %50 = load %struct.netent*, %struct.netent** %6, align 8
  %51 = getelementptr inbounds %struct.netent, %struct.netent* %50, i32 0, i32 1
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
  br label %159

70:                                               ; preds = %49
  %71 = load %struct.netent*, %struct.netent** %6, align 8
  %72 = getelementptr inbounds %struct.netent, %struct.netent* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.netent*, %struct.netent** %7, align 8
  %75 = getelementptr inbounds %struct.netent, %struct.netent* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.netent*, %struct.netent** %6, align 8
  %77 = getelementptr inbounds %struct.netent, %struct.netent* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.netent*, %struct.netent** %7, align 8
  %80 = getelementptr inbounds %struct.netent, %struct.netent* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i64 @ALIGN(i8* %81)
  %83 = inttoptr i64 %82 to i8*
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 8
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  store i8* %87, i8** %10, align 8
  %88 = load %struct.netent*, %struct.netent** %6, align 8
  %89 = getelementptr inbounds %struct.netent, %struct.netent* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  %93 = load i8*, i8** %10, align 8
  %94 = load %struct.netent*, %struct.netent** %6, align 8
  %95 = getelementptr inbounds %struct.netent, %struct.netent* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @strcpy(i8* %93, i8* %96)
  %98 = load i8*, i8** %10, align 8
  %99 = load %struct.netent*, %struct.netent** %7, align 8
  %100 = getelementptr inbounds %struct.netent, %struct.netent* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i8*, i8** %10, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %10, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = call i64 @ALIGN(i8* %105)
  %107 = inttoptr i64 %106 to i8**
  %108 = load %struct.netent*, %struct.netent** %7, align 8
  %109 = getelementptr inbounds %struct.netent, %struct.netent* %108, i32 0, i32 0
  store i8** %107, i8*** %109, align 8
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %149, %70
  %111 = load %struct.netent*, %struct.netent** %6, align 8
  %112 = getelementptr inbounds %struct.netent, %struct.netent* %111, i32 0, i32 0
  %113 = load i8**, i8*** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %152

119:                                              ; preds = %110
  %120 = load %struct.netent*, %struct.netent** %6, align 8
  %121 = getelementptr inbounds %struct.netent, %struct.netent* %120, i32 0, i32 0
  %122 = load i8**, i8*** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @strlen(i8* %126)
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  %129 = load i8*, i8** %10, align 8
  %130 = load %struct.netent*, %struct.netent** %6, align 8
  %131 = getelementptr inbounds %struct.netent, %struct.netent* %130, i32 0, i32 0
  %132 = load i8**, i8*** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @strcpy(i8* %129, i8* %136)
  %138 = load i8*, i8** %10, align 8
  %139 = load %struct.netent*, %struct.netent** %7, align 8
  %140 = getelementptr inbounds %struct.netent, %struct.netent* %139, i32 0, i32 0
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  store i8* %138, i8** %144, align 8
  %145 = load i32, i32* %12, align 4
  %146 = load i8*, i8** %10, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %10, align 8
  br label %149

149:                                              ; preds = %119
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %110

152:                                              ; preds = %110
  %153 = load %struct.netent*, %struct.netent** %7, align 8
  %154 = getelementptr inbounds %struct.netent, %struct.netent* %153, i32 0, i32 0
  %155 = load i8**, i8*** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  store i8* null, i8** %158, align 8
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %152, %68
  %160 = load i32, i32* %5, align 4
  ret i32 %160
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
