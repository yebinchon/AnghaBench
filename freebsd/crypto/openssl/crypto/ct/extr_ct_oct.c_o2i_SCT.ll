; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_oct.c_o2i_SCT.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_oct.c_o2i_SCT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8, i64, i64, i64, i32*, i32*, i32, i32* }

@MAX_SCT_SIZE = common dso_local global i64 0, align 8
@CT_F_O2I_SCT = common dso_local global i32 0, align 4
@CT_R_SCT_INVALID = common dso_local global i32 0, align 4
@SCT_VERSION_V1 = common dso_local global i8 0, align 1
@CT_V1_HASHLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @o2i_SCT(%struct.TYPE_7__** %0, i8** %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @MAX_SCT_SIZE, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %3
  %19 = load i32, i32* @CT_F_O2I_SCT, align 4
  %20 = load i32, i32* @CT_R_SCT_INVALID, align 4
  %21 = call i32 @CTerr(i32 %19, i32 %20)
  br label %160

22:                                               ; preds = %14
  %23 = call %struct.TYPE_7__* (...) @SCT_new()
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %8, align 8
  %24 = icmp eq %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %160

26:                                               ; preds = %22
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i8 %30, i8* %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @SCT_VERSION_V1, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %129

40:                                               ; preds = %26
  %41 = load i64, i64* %7, align 8
  %42 = icmp ult i64 %41, 43
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @CT_F_O2I_SCT, align 4
  %45 = load i32, i32* @CT_R_SCT_INVALID, align 4
  %46 = call i32 @CTerr(i32 %44, i32 %45)
  br label %160

47:                                               ; preds = %40
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %48, 43
  store i64 %49, i64* %7, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* @CT_V1_HASHLEN, align 8
  %54 = call i8* @BUF_memdup(i8* %52, i64 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 7
  store i32* %55, i32** %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 7
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %160

63:                                               ; preds = %47
  %64 = load i64, i64* @CT_V1_HASHLEN, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* @CT_V1_HASHLEN, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %69, i8** %9, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @n2l8(i8* %70, i32 %73)
  %75 = load i8*, i8** %9, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @n2s(i8* %75, i64 %76)
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %63
  %82 = load i32, i32* @CT_F_O2I_SCT, align 4
  %83 = load i32, i32* @CT_R_SCT_INVALID, align 4
  %84 = call i32 @CTerr(i32 %82, i32 %83)
  br label %160

85:                                               ; preds = %63
  %86 = load i64, i64* %11, align 8
  %87 = icmp ugt i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load i8*, i8** %9, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i8* @BUF_memdup(i8* %89, i64 %90)
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 5
  store i32* %92, i32** %94, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %160

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %85
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 %105
  store i8* %107, i8** %9, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %7, align 8
  %110 = sub i64 %109, %108
  store i64 %110, i64* %7, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @o2i_SCT_signature(%struct.TYPE_7__* %111, i8** %9, i64 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %101
  %117 = load i32, i32* @CT_F_O2I_SCT, align 4
  %118 = load i32, i32* @CT_R_SCT_INVALID, align 4
  %119 = call i32 @CTerr(i32 %117, i32 %118)
  br label %160

120:                                              ; preds = %101
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %7, align 8
  %124 = sub i64 %123, %122
  store i64 %124, i64* %7, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i8**, i8*** %6, align 8
  store i8* %127, i8** %128, align 8
  br label %149

129:                                              ; preds = %26
  %130 = load i8*, i8** %9, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call i8* @BUF_memdup(i8* %130, i64 %131)
  %133 = bitcast i8* %132 to i32*
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 4
  store i32* %133, i32** %135, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  br label %160

141:                                              ; preds = %129
  %142 = load i64, i64* %7, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  store i64 %142, i64* %144, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = load i64, i64* %7, align 8
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  %148 = load i8**, i8*** %6, align 8
  store i8* %147, i8** %148, align 8
  br label %149

149:                                              ; preds = %141, %120
  %150 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %151 = icmp ne %struct.TYPE_7__** %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = call i32 @SCT_free(%struct.TYPE_7__* %154)
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %157 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %156, %struct.TYPE_7__** %157, align 8
  br label %158

158:                                              ; preds = %152, %149
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %159, %struct.TYPE_7__** %4, align 8
  br label %163

160:                                              ; preds = %140, %116, %99, %81, %62, %43, %25, %18
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %162 = call i32 @SCT_free(%struct.TYPE_7__* %161)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %163

163:                                              ; preds = %160, %158
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %164
}

declare dso_local i32 @CTerr(i32, i32) #1

declare dso_local %struct.TYPE_7__* @SCT_new(...) #1

declare dso_local i8* @BUF_memdup(i8*, i64) #1

declare dso_local i32 @n2l8(i8*, i32) #1

declare dso_local i32 @n2s(i8*, i64) #1

declare dso_local i32 @o2i_SCT_signature(%struct.TYPE_7__*, i8**, i64) #1

declare dso_local i32 @SCT_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
