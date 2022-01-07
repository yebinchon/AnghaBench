; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_read_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_read_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_read_ctx = type { i8*, i64, i8*, i8*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_fast_read_ctx*, i8**)* @eap_fast_read_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_read_line(%struct.eap_fast_read_ctx* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_fast_read_ctx*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.eap_fast_read_ctx* %0, %struct.eap_fast_read_ctx** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8
  %13 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = call i32* @fgets(i8* %20, i64 %23, i64 %26)
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %141

30:                                               ; preds = %17
  br label %96

31:                                               ; preds = %2
  %32 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = icmp uge i8* %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %141

40:                                               ; preds = %31
  %41 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %7, align 8
  br label %44

44:                                               ; preds = %57, %40
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ult i8* %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 10
  br label %55

55:                                               ; preds = %50, %44
  %56 = phi i1 [ false, %44 ], [ %54, %50 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %7, align 8
  br label %44

60:                                               ; preds = %55
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %63 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = ptrtoint i8* %61 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp uge i64 %68, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %60
  %74 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %75 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %76, 1
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %73, %60
  %79 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %80 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %83 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @os_memcpy(i8* %81, i8* %84, i64 %85)
  %87 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %95 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %78, %30
  %97 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %98 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %101 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %102, 1
  %104 = getelementptr inbounds i8, i8* %99, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %106 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %6, align 8
  br label %108

108:                                              ; preds = %125, %96
  %109 = load i8*, i8** %6, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %108
  %114 = load i8*, i8** %6, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 10
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load i8*, i8** %6, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 13
  br i1 %122, label %123, label %125

123:                                              ; preds = %118, %113
  %124 = load i8*, i8** %6, align 8
  store i8 0, i8* %124, align 1
  br label %128

125:                                              ; preds = %118
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %6, align 8
  br label %108

128:                                              ; preds = %123, %108
  %129 = load %struct.eap_fast_read_ctx*, %struct.eap_fast_read_ctx** %4, align 8
  %130 = getelementptr inbounds %struct.eap_fast_read_ctx, %struct.eap_fast_read_ctx* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i8* @os_strchr(i8* %131, i8 signext 61)
  store i8* %132, i8** %6, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %6, align 8
  store i8 0, i8* %136, align 1
  br label %138

138:                                              ; preds = %135, %128
  %139 = load i8*, i8** %6, align 8
  %140 = load i8**, i8*** %5, align 8
  store i8* %139, i8** %140, align 8
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %138, %39, %29
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32* @fgets(i8*, i64, i64) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
