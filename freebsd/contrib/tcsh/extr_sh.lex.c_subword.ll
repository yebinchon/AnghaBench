; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_subword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_subword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }
%struct.Strbuf = type { i64 }
%struct.TYPE_3__ = type { i32* }

@lhsb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@Strbuf_INIT = common dso_local global %struct.Strbuf zeroinitializer, align 8
@rhsb = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32*, i64*)* @subword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @subword(i32* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.Strbuf, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %28 [
    i32 114, label %15
    i32 101, label %15
    i32 104, label %15
    i32 116, label %15
    i32 113, label %15
    i32 120, label %15
    i32 117, label %15
    i32 108, label %15
  ]

15:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32* @domod(i32* %16, i32 %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32*, i32** %8, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @Strsave(i32* %23)
  store i32* %24, i32** %5, align 8
  br label %99

25:                                               ; preds = %15
  %26 = load i32*, i32** %8, align 8
  store i32 1, i32* %26, align 4
  %27 = load i32*, i32** %10, align 8
  store i32* %27, i32** %5, align 8
  br label %99

28:                                               ; preds = %4
  %29 = load i32*, i32** %6, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %11, align 8
  br label %33

33:                                               ; preds = %92, %28
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %95

37:                                               ; preds = %33
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lhsb, i32 0, i32 0), align 8
  %40 = call i32 @matchs(i32* %38, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %91

42:                                               ; preds = %37
  %43 = bitcast %struct.Strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 bitcast (%struct.Strbuf* @Strbuf_INIT to i8*), i64 8, i1 false)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = ptrtoint i32* %45 to i64
  %48 = ptrtoint i32* %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32 @Strbuf_appendn(%struct.Strbuf* %13, i32* %44, i32 %51)
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rhsb, i32 0, i32 0), align 8
  store i32* %53, i32** %12, align 8
  br label %54

54:                                               ; preds = %77, %42
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %54
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %70 [
    i32 92, label %61
    i32 38, label %74
  ]

61:                                               ; preds = %58
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 38
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %12, align 8
  br label %69

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %58, %69
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @Strbuf_append1(%struct.Strbuf* %13, i32 %72)
  br label %77

74:                                               ; preds = %58
  %75 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lhsb, i32 0, i32 0), align 8
  %76 = call i32 @Strbuf_append(%struct.Strbuf* %13, i32* %75)
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %12, align 8
  br label %54

80:                                               ; preds = %54
  %81 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %13, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %9, align 8
  store i64 %82, i64* %83, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lhsb, i32 0, i32 1), align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @Strbuf_append(%struct.Strbuf* %13, i32* %87)
  %89 = load i32*, i32** %8, align 8
  store i32 1, i32* %89, align 4
  %90 = call i32* @Strbuf_finish(%struct.Strbuf* %13)
  store i32* %90, i32** %5, align 8
  br label %99

91:                                               ; preds = %37
  br label %92

92:                                               ; preds = %91
  %93 = load i32*, i32** %11, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %11, align 8
  br label %33

95:                                               ; preds = %33
  %96 = load i32*, i32** %8, align 8
  store i32 0, i32* %96, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = call i32* @Strsave(i32* %97)
  store i32* %98, i32** %5, align 8
  br label %99

99:                                               ; preds = %95, %80, %25, %21
  %100 = load i32*, i32** %5, align 8
  ret i32* %100
}

declare dso_local i32* @domod(i32*, i32) #1

declare dso_local i32* @Strsave(i32*) #1

declare dso_local i32 @matchs(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Strbuf_appendn(%struct.Strbuf*, i32*, i32) #1

declare dso_local i32 @Strbuf_append1(%struct.Strbuf*, i32) #1

declare dso_local i32 @Strbuf_append(%struct.Strbuf*, i32*) #1

declare dso_local i32* @Strbuf_finish(%struct.Strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
