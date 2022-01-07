; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_get_mac_addr_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_get_mac_addr_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_addr = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"0123456789abcdefABCDEF:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"&/\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Incorrect MAC address\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Incorrect mask length\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Incorrect mask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @get_mac_addr_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_mac_addr_mask(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ether_addr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %19

35:                                               ; preds = %19
  br label %192

36:                                               ; preds = %3
  %37 = load i8*, i8** %4, align 8
  %38 = call i8* @strdup(i8* %37)
  store i8* %38, i8** %10, align 8
  store i8* %38, i8** %11, align 8
  %39 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %39, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %36
  %42 = load i8*, i8** %9, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %41
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = call i64 @strspn(i8* %49, i8* %50)
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %46
  %55 = load i8*, i8** %9, align 8
  %56 = call %struct.ether_addr* @ether_aton(i8* %55)
  store %struct.ether_addr* %56, %struct.ether_addr** %12, align 8
  %57 = icmp eq %struct.ether_addr* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %54, %46
  %59 = load i32, i32* @EX_DATAERR, align 4
  %60 = call i32 @errx(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %54
  %62 = load %struct.ether_addr*, %struct.ether_addr** %12, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %65 = call i32 @bcopy(%struct.ether_addr* %62, i32* %63, i32 %64)
  br label %69

66:                                               ; preds = %41, %36
  %67 = load i32, i32* @EX_DATAERR, align 4
  %68 = call i32 @errx(i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i8*, i8** %10, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %155

72:                                               ; preds = %69
  %73 = load i8*, i8** %4, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sub nsw i64 %78, 1
  %80 = getelementptr inbounds i8, i8* %73, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 47
  br i1 %83, label %84, label %134

84:                                               ; preds = %72
  %85 = load i8*, i8** %10, align 8
  %86 = call i64 @strtol(i8* %85, i8** %9, i32 10)
  store i64 %86, i64* %14, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %84
  %92 = load i64, i64* %14, align 8
  %93 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %94 = mul nsw i32 %93, 8
  %95 = sext i32 %94 to i64
  %96 = icmp sgt i64 %92, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i64, i64* %14, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97, %91, %84
  %101 = load i32, i32* @EX_DATAERR, align 4
  %102 = call i32 @errx(i32 %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %97
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %128, %103
  %105 = load i64, i64* %14, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %110 = icmp slt i32 %108, %109
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi i1 [ false, %104 ], [ %110, %107 ]
  br i1 %112, label %113, label %133

113:                                              ; preds = %111
  %114 = load i64, i64* %14, align 8
  %115 = icmp sge i64 %114, 8
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %122

117:                                              ; preds = %113
  %118 = load i64, i64* %14, align 8
  %119 = sub nsw i64 8, %118
  %120 = trunc i64 %119 to i32
  %121 = shl i32 -1, %120
  br label %122

122:                                              ; preds = %117, %116
  %123 = phi i32 [ 255, %116 ], [ %121, %117 ]
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  br label %128

128:                                              ; preds = %122
  %129 = load i64, i64* %14, align 8
  %130 = sub nsw i64 %129, 8
  store i64 %130, i64* %14, align 8
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %104

133:                                              ; preds = %111
  br label %154

134:                                              ; preds = %72
  %135 = load i8*, i8** %10, align 8
  %136 = call i64 @strlen(i8* %135)
  store i64 %136, i64* %8, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = load i8*, i8** %13, align 8
  %139 = call i64 @strspn(i8* %137, i8* %138)
  %140 = load i64, i64* %8, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %146, label %142

142:                                              ; preds = %134
  %143 = load i8*, i8** %10, align 8
  %144 = call %struct.ether_addr* @ether_aton(i8* %143)
  store %struct.ether_addr* %144, %struct.ether_addr** %12, align 8
  %145 = icmp eq %struct.ether_addr* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %142, %134
  %147 = load i32, i32* @EX_DATAERR, align 4
  %148 = call i32 @errx(i32 %147, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %142
  %150 = load %struct.ether_addr*, %struct.ether_addr** %12, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %153 = call i32 @bcopy(%struct.ether_addr* %150, i32* %151, i32 %152)
  br label %154

154:                                              ; preds = %149, %133
  br label %169

155:                                              ; preds = %69
  store i32 0, i32* %7, align 4
  br label %156

156:                                              ; preds = %165, %155
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %156
  %161 = load i32*, i32** %6, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 255, i32* %164, align 4
  br label %165

165:                                              ; preds = %160
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %156

168:                                              ; preds = %156
  br label %169

169:                                              ; preds = %168, %154
  store i32 0, i32* %7, align 4
  br label %170

170:                                              ; preds = %186, %169
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %170
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %5, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, %179
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %174
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %170

189:                                              ; preds = %170
  %190 = load i8*, i8** %11, align 8
  %191 = call i32 @free(i8* %190)
  br label %192

192:                                              ; preds = %189, %35
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local %struct.ether_addr* @ether_aton(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @bcopy(%struct.ether_addr*, i32*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
