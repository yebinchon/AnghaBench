; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_argv.c_argv_flt_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_argv.c_argv_flt_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__** }
%struct.passwd = type { i32 }

@argv_comp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32*, i64)* @argv_flt_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @argv_flt_user(i32* %0, %struct.TYPE_7__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.passwd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call %struct.TYPE_6__* @EXP(i32* %16)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %10, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i64, i64* %9, align 8
  %25 = sub i64 %24, 1
  %26 = load i8*, i8** %13, align 8
  %27 = load i64, i64* %15, align 8
  %28 = call i32 @INT2CHAR(i32* %21, i32* %23, i64 %25, i8* %26, i64 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load i64, i64* %15, align 8
  %32 = call i8* @v_strdup(i32* %29, i8* %30, i64 %31)
  store i8* %32, i8** %13, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %144

35:                                               ; preds = %4
  %36 = call i32 (...) @setpwent()
  br label %37

37:                                               ; preds = %60, %59, %35
  %38 = call %struct.passwd* (...) @getpwent()
  store %struct.passwd* %38, %struct.passwd** %11, align 8
  %39 = icmp ne %struct.passwd* %38, null
  br i1 %39, label %40, label %127

40:                                               ; preds = %37
  %41 = load %struct.passwd*, %struct.passwd** %11, align 8
  %42 = getelementptr inbounds %struct.passwd, %struct.passwd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @strlen(i32 %43)
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %15, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* %14, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %13, align 8
  %53 = load %struct.passwd*, %struct.passwd** %11, align 8
  %54 = getelementptr inbounds %struct.passwd, %struct.passwd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %15, align 8
  %57 = call i64 @memcmp(i8* %52, i32 %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51, %47
  br label %37

60:                                               ; preds = %51, %40
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.passwd*, %struct.passwd** %11, align 8
  %63 = getelementptr inbounds %struct.passwd, %struct.passwd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %14, align 8
  %66 = add i64 %65, 1
  %67 = load i32*, i32** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @CHAR2INT(i32* %61, i32 %64, i64 %66, i32* %67, i64 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 1
  %73 = call i32 @argv_alloc(i32* %70, i64 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %75, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %76, i64 %80
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  store i8 126, i8* %85, align 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %88, i64 %92
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i32*, i32** %8, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @MEMCPY(i8* %97, i32* %98, i64 %99)
  %101 = load i64, i64* %9, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %103, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %104, i64 %108
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i64 %101, i64* %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  store %struct.TYPE_8__** %118, %struct.TYPE_8__*** %120, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %37

127:                                              ; preds = %37
  %128 = call i32 (...) @endpwent()
  %129 = load i8*, i8** %13, align 8
  %130 = call i32 @free(i8* %129)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %133, i64 %135
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load i32, i32* @argv_comp, align 4
  %143 = call i32 @qsort(%struct.TYPE_8__** %136, i32 %141, i32 8, i32 %142)
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %127, %34
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local %struct.TYPE_6__* @EXP(i32*) #1

declare dso_local i32 @INT2CHAR(i32*, i32*, i64, i8*, i64) #1

declare dso_local i8* @v_strdup(i32*, i8*, i64) #1

declare dso_local i32 @setpwent(...) #1

declare dso_local %struct.passwd* @getpwent(...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @CHAR2INT(i32*, i32, i64, i32*, i64) #1

declare dso_local i32 @argv_alloc(i32*, i64) #1

declare dso_local i32 @MEMCPY(i8*, i32*, i64) #1

declare dso_local i32 @endpwent(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @qsort(%struct.TYPE_8__**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
