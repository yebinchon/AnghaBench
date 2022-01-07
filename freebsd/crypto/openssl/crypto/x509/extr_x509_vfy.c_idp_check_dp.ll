; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_idp_check_dp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_idp_check_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@GEN_DIRNAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_13__*)* @idp_check_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idp_check_dp(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = icmp ne %struct.TYPE_13__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = icmp ne %struct.TYPE_13__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %2
  store i32 1, i32* %3, align 4
  br label %157

18:                                               ; preds = %14
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %59

23:                                               ; preds = %18
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %157

29:                                               ; preds = %23
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %157

40:                                               ; preds = %34
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @X509_NAME_cmp(i32* %43, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %157

50:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %157

51:                                               ; preds = %29
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %6, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %7, align 8
  br label %79

59:                                               ; preds = %18
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %157

70:                                               ; preds = %64
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %7, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %6, align 8
  br label %78

78:                                               ; preds = %70, %59
  br label %79

79:                                               ; preds = %78, %51
  %80 = load i32*, i32** %6, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %112

82:                                               ; preds = %79
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %108, %82
  %84 = load i32, i32* %10, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @sk_GENERAL_NAME_num(i32* %85)
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %83
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call %struct.TYPE_12__* @sk_GENERAL_NAME_value(i32* %89, i32 %90)
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %8, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @GEN_DIRNAME, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %108

98:                                               ; preds = %88
  %99 = load i32*, i32** %6, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @X509_NAME_cmp(i32* %99, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  store i32 1, i32* %3, align 4
  br label %157

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %97
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %83

111:                                              ; preds = %83
  store i32 0, i32* %3, align 4
  br label %157

112:                                              ; preds = %79
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %153, %112
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @sk_GENERAL_NAME_num(i32* %118)
  %120 = icmp slt i32 %114, %119
  br i1 %120, label %121, label %156

121:                                              ; preds = %113
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call %struct.TYPE_12__* @sk_GENERAL_NAME_value(i32* %125, i32 %126)
  store %struct.TYPE_12__* %127, %struct.TYPE_12__** %8, align 8
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %149, %121
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @sk_GENERAL_NAME_num(i32* %133)
  %135 = icmp slt i32 %129, %134
  br i1 %135, label %136, label %152

136:                                              ; preds = %128
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call %struct.TYPE_12__* @sk_GENERAL_NAME_value(i32* %140, i32 %141)
  store %struct.TYPE_12__* %142, %struct.TYPE_12__** %9, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %145 = call i32 @GENERAL_NAME_cmp(%struct.TYPE_12__* %143, %struct.TYPE_12__* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %136
  store i32 1, i32* %3, align 4
  br label %157

148:                                              ; preds = %136
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %128

152:                                              ; preds = %128
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %113

156:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %147, %111, %106, %69, %50, %49, %39, %28, %17
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @X509_NAME_cmp(i32*, i32*) #1

declare dso_local i32 @sk_GENERAL_NAME_num(i32*) #1

declare dso_local %struct.TYPE_12__* @sk_GENERAL_NAME_value(i32*, i32) #1

declare dso_local i32 @GENERAL_NAME_cmp(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
