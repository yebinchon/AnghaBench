; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_fillbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_fillbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpio = type { i32, i64, i8*, i32, i64, i32, i64, i8* }

@errno = common dso_local global i8* null, align 8
@EPROTO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.httpio*, i64)* @http_fillbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_fillbuf(%struct.httpio* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.httpio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.httpio* %0, %struct.httpio** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.httpio*, %struct.httpio** %4, align 8
  %9 = getelementptr inbounds %struct.httpio, %struct.httpio* %8, i32 0, i32 7
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %143

13:                                               ; preds = %2
  %14 = load %struct.httpio*, %struct.httpio** %4, align 8
  %15 = getelementptr inbounds %struct.httpio, %struct.httpio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %143

19:                                               ; preds = %13
  %20 = load %struct.httpio*, %struct.httpio** %4, align 8
  %21 = getelementptr inbounds %struct.httpio, %struct.httpio* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %19
  %25 = load %struct.httpio*, %struct.httpio** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @http_growbuf(%struct.httpio* %25, i64 %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %143

30:                                               ; preds = %24
  %31 = load %struct.httpio*, %struct.httpio** %4, align 8
  %32 = getelementptr inbounds %struct.httpio, %struct.httpio* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.httpio*, %struct.httpio** %4, align 8
  %35 = getelementptr inbounds %struct.httpio, %struct.httpio* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @fetch_read(i32 %33, i8* %36, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load i8*, i8** @errno, align 8
  %43 = load %struct.httpio*, %struct.httpio** %4, align 8
  %44 = getelementptr inbounds %struct.httpio, %struct.httpio* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  store i32 -1, i32* %3, align 4
  br label %143

45:                                               ; preds = %30
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.httpio*, %struct.httpio** %4, align 8
  %48 = getelementptr inbounds %struct.httpio, %struct.httpio* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.httpio*, %struct.httpio** %4, align 8
  %50 = getelementptr inbounds %struct.httpio, %struct.httpio* %49, i32 0, i32 6
  store i64 0, i64* %50, align 8
  %51 = load %struct.httpio*, %struct.httpio** %4, align 8
  %52 = getelementptr inbounds %struct.httpio, %struct.httpio* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %3, align 4
  br label %143

54:                                               ; preds = %19
  %55 = load %struct.httpio*, %struct.httpio** %4, align 8
  %56 = getelementptr inbounds %struct.httpio, %struct.httpio* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.httpio*, %struct.httpio** %4, align 8
  %61 = call i32 @http_new_chunk(%struct.httpio* %60)
  switch i32 %61, label %69 [
    i32 -1, label %62
    i32 0, label %66
  ]

62:                                               ; preds = %59
  %63 = load i8*, i8** @EPROTO, align 8
  %64 = load %struct.httpio*, %struct.httpio** %4, align 8
  %65 = getelementptr inbounds %struct.httpio, %struct.httpio* %64, i32 0, i32 7
  store i8* %63, i8** %65, align 8
  store i32 -1, i32* %3, align 4
  br label %143

66:                                               ; preds = %59
  %67 = load %struct.httpio*, %struct.httpio** %4, align 8
  %68 = getelementptr inbounds %struct.httpio, %struct.httpio* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  store i32 0, i32* %3, align 4
  br label %143

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %54
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.httpio*, %struct.httpio** %4, align 8
  %73 = getelementptr inbounds %struct.httpio, %struct.httpio* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ugt i64 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.httpio*, %struct.httpio** %4, align 8
  %78 = getelementptr inbounds %struct.httpio, %struct.httpio* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %76, %70
  %81 = load %struct.httpio*, %struct.httpio** %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @http_growbuf(%struct.httpio* %81, i64 %82)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 -1, i32* %3, align 4
  br label %143

86:                                               ; preds = %80
  %87 = load %struct.httpio*, %struct.httpio** %4, align 8
  %88 = getelementptr inbounds %struct.httpio, %struct.httpio* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.httpio*, %struct.httpio** %4, align 8
  %91 = getelementptr inbounds %struct.httpio, %struct.httpio* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = load i64, i64* %5, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @fetch_read(i32 %89, i8* %92, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %101

97:                                               ; preds = %86
  %98 = load i8*, i8** @errno, align 8
  %99 = load %struct.httpio*, %struct.httpio** %4, align 8
  %100 = getelementptr inbounds %struct.httpio, %struct.httpio* %99, i32 0, i32 7
  store i8* %98, i8** %100, align 8
  store i32 -1, i32* %3, align 4
  br label %143

101:                                              ; preds = %86
  %102 = load %struct.httpio*, %struct.httpio** %4, align 8
  %103 = getelementptr inbounds %struct.httpio, %struct.httpio* %102, i32 0, i32 6
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.httpio*, %struct.httpio** %4, align 8
  %106 = getelementptr inbounds %struct.httpio, %struct.httpio* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = load %struct.httpio*, %struct.httpio** %4, align 8
  %110 = getelementptr inbounds %struct.httpio, %struct.httpio* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = sub i64 %111, %108
  store i64 %112, i64* %110, align 8
  %113 = load %struct.httpio*, %struct.httpio** %4, align 8
  %114 = getelementptr inbounds %struct.httpio, %struct.httpio* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %139

117:                                              ; preds = %101
  %118 = load %struct.httpio*, %struct.httpio** %4, align 8
  %119 = getelementptr inbounds %struct.httpio, %struct.httpio* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @fetch_read(i32 %120, i8* %7, i32 1)
  %122 = icmp ne i32 %121, 1
  br i1 %122, label %137, label %123

123:                                              ; preds = %117
  %124 = load i8, i8* %7, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 13
  br i1 %126, label %137, label %127

127:                                              ; preds = %123
  %128 = load %struct.httpio*, %struct.httpio** %4, align 8
  %129 = getelementptr inbounds %struct.httpio, %struct.httpio* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @fetch_read(i32 %130, i8* %7, i32 1)
  %132 = icmp ne i32 %131, 1
  br i1 %132, label %137, label %133

133:                                              ; preds = %127
  %134 = load i8, i8* %7, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 10
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %127, %123, %117
  store i32 -1, i32* %3, align 4
  br label %143

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %138, %101
  %140 = load %struct.httpio*, %struct.httpio** %4, align 8
  %141 = getelementptr inbounds %struct.httpio, %struct.httpio* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %137, %97, %85, %66, %62, %45, %41, %29, %18, %12
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @http_growbuf(%struct.httpio*, i64) #1

declare dso_local i32 @fetch_read(i32, i8*, i32) #1

declare dso_local i32 @http_new_chunk(%struct.httpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
