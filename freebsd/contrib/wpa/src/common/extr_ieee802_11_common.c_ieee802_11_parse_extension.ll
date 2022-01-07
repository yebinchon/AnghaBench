; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee802_11_parse_extension.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee802_11_parse_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_11_elems = type { i32*, i32*, i64, i32*, i64, i32*, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"short information element (Ext)\00", align 1
@FILS_SESSION_LEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@WPA_KEY_RSC_LEN = common dso_local global i64 0, align 8
@FILS_NONCE_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [82 x i8] c"IEEE 802.11 element parsing ignored unknown element extension (ext_id=%u elen=%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.ieee802_11_elems*, i32)* @ieee802_11_parse_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_11_parse_extension(i32* %0, i64 %1, %struct.ieee802_11_elems* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee802_11_elems*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ieee802_11_elems* %2, %struct.ieee802_11_elems** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %7, align 8
  %12 = icmp ult i64 %11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @MSG_MSGDUMP, align 4
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %13
  store i32 -1, i32* %5, align 4
  br label %176

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  %23 = load i32, i32* %21, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %7, align 8
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %165 [
    i32 142, label %27
    i32 136, label %35
    i32 139, label %46
    i32 135, label %53
    i32 141, label %62
    i32 140, label %76
    i32 131, label %87
    i32 134, label %99
    i32 137, label %106
    i32 138, label %117
    i32 129, label %126
    i32 128, label %137
    i32 133, label %144
    i32 132, label %151
    i32 130, label %158
  ]

27:                                               ; preds = %20
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %175

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %34 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  br label %175

35:                                               ; preds = %20
  %36 = load i64, i64* %7, align 8
  %37 = icmp ult i64 %36, 3
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %175

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %42 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %45 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  br label %175

46:                                               ; preds = %20
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %49 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %48, i32 0, i32 3
  store i32* %47, i32** %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %52 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %51, i32 0, i32 4
  store i64 %50, i64* %52, align 8
  br label %175

53:                                               ; preds = %20
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @FILS_SESSION_LEN, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %175

58:                                               ; preds = %53
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %61 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %60, i32 0, i32 5
  store i32* %59, i32** %61, align 8
  br label %175

62:                                               ; preds = %20
  %63 = load i64, i64* %7, align 8
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = mul nsw i32 2, %64
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %175

69:                                               ; preds = %62
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %72 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %71, i32 0, i32 6
  store i32* %70, i32** %72, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %75 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %74, i32 0, i32 7
  store i64 %73, i64* %75, align 8
  br label %175

76:                                               ; preds = %20
  %77 = load i64, i64* %7, align 8
  %78 = icmp ult i64 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %175

80:                                               ; preds = %76
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %83 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %82, i32 0, i32 8
  store i32* %81, i32** %83, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %86 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %85, i32 0, i32 9
  store i64 %84, i64* %86, align 8
  br label %175

87:                                               ; preds = %20
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @WPA_KEY_RSC_LEN, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %175

92:                                               ; preds = %87
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %95 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %94, i32 0, i32 10
  store i32* %93, i32** %95, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %98 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %97, i32 0, i32 11
  store i64 %96, i64* %98, align 8
  br label %175

99:                                               ; preds = %20
  %100 = load i32*, i32** %6, align 8
  %101 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %102 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %101, i32 0, i32 12
  store i32* %100, i32** %102, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %105 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %104, i32 0, i32 13
  store i64 %103, i64* %105, align 8
  br label %175

106:                                              ; preds = %20
  %107 = load i64, i64* %7, align 8
  %108 = icmp ult i64 %107, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %175

110:                                              ; preds = %106
  %111 = load i32*, i32** %6, align 8
  %112 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %113 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %112, i32 0, i32 14
  store i32* %111, i32** %113, align 8
  %114 = load i64, i64* %7, align 8
  %115 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %116 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %115, i32 0, i32 15
  store i64 %114, i64* %116, align 8
  br label %175

117:                                              ; preds = %20
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* @FILS_NONCE_LEN, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %175

122:                                              ; preds = %117
  %123 = load i32*, i32** %6, align 8
  %124 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %125 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %124, i32 0, i32 16
  store i32* %123, i32** %125, align 8
  br label %175

126:                                              ; preds = %20
  %127 = load i64, i64* %7, align 8
  %128 = icmp ult i64 %127, 2
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %175

130:                                              ; preds = %126
  %131 = load i32*, i32** %6, align 8
  %132 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %133 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %132, i32 0, i32 17
  store i32* %131, i32** %133, align 8
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %136 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %135, i32 0, i32 18
  store i64 %134, i64* %136, align 8
  br label %175

137:                                              ; preds = %20
  %138 = load i32*, i32** %6, align 8
  %139 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %140 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %139, i32 0, i32 19
  store i32* %138, i32** %140, align 8
  %141 = load i64, i64* %7, align 8
  %142 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %143 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %142, i32 0, i32 20
  store i64 %141, i64* %143, align 8
  br label %175

144:                                              ; preds = %20
  %145 = load i32*, i32** %6, align 8
  %146 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %147 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %146, i32 0, i32 21
  store i32* %145, i32** %147, align 8
  %148 = load i64, i64* %7, align 8
  %149 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %150 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %149, i32 0, i32 22
  store i64 %148, i64* %150, align 8
  br label %175

151:                                              ; preds = %20
  %152 = load i32*, i32** %6, align 8
  %153 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %154 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %153, i32 0, i32 23
  store i32* %152, i32** %154, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %157 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %156, i32 0, i32 24
  store i64 %155, i64* %157, align 8
  br label %175

158:                                              ; preds = %20
  %159 = load i32*, i32** %6, align 8
  %160 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %161 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %160, i32 0, i32 25
  store i32* %159, i32** %161, align 8
  %162 = load i64, i64* %7, align 8
  %163 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %164 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %163, i32 0, i32 26
  store i64 %162, i64* %164, align 8
  br label %175

165:                                              ; preds = %20
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load i32, i32* @MSG_MSGDUMP, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load i64, i64* %7, align 8
  %172 = trunc i64 %171 to i32
  %173 = call i32 (i32, i8*, ...) @wpa_printf(i32 %169, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %170, i32 %172)
  br label %174

174:                                              ; preds = %168, %165
  store i32 -1, i32* %5, align 4
  br label %176

175:                                              ; preds = %158, %151, %144, %137, %130, %129, %122, %121, %110, %109, %99, %92, %91, %80, %79, %69, %68, %58, %57, %46, %39, %38, %31, %30
  store i32 0, i32* %5, align 4
  br label %176

176:                                              ; preds = %175, %174, %19
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
