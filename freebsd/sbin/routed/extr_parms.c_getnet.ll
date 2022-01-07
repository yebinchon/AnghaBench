; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_parms.c_getnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_parms.c_getnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netent = type { i64 }
%struct.in_addr = type { i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@RIP_DEFAULT = common dso_local global i32 0, align 4
@HOST_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getnet(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.in_addr, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @strrchr(i8* %22, i8 signext 47)
  store i8* %23, i8** %14, align 8
  %24 = icmp ne i8* null, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %3
  %26 = load i8*, i8** %14, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = trunc i64 %19 to i32
  %34 = sub nsw i32 %33, 1
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %196

37:                                               ; preds = %25
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @memmove(i8* %21, i8* %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %21, i64 %42
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %14, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %14, align 8
  store i8* %21, i8** %5, align 8
  br label %46

46:                                               ; preds = %37, %3
  %47 = load i8*, i8** %5, align 8
  %48 = call %struct.netent* @getnetbyname(i8* %47)
  store %struct.netent* %48, %struct.netent** %9, align 8
  %49 = load %struct.netent*, %struct.netent** %9, align 8
  %50 = icmp ne %struct.netent* %49, null
  br i1 %50, label %51, label %84

51:                                               ; preds = %46
  %52 = load %struct.netent*, %struct.netent** %9, align 8
  %53 = getelementptr inbounds %struct.netent, %struct.netent* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, -16777216
  %60 = icmp eq i32 0, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 8
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %61, %51
  %66 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, -16777216
  %69 = icmp eq i32 0, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 8
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, -16777216
  %78 = icmp eq i32 0, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 8
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %79, %74
  br label %106

84:                                               ; preds = %46
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @inet_aton(i8* %85, %struct.in_addr* %11)
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ntohl(i32 %90)
  %92 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i32 %91, i32* %92, align 4
  br label %105

93:                                               ; preds = %84
  %94 = load i8*, i8** %14, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %93
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @strcasecmp(i8* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @RIP_DEFAULT, align 4
  %102 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  br label %104

103:                                              ; preds = %96, %93
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %196

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104, %88
  br label %106

106:                                              ; preds = %105, %83
  %107 = load i8*, i8** %14, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %123, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @htonl(i32 %111)
  %113 = call i32 @std_mask(i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = xor i32 %114, -1
  %116 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %115, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %109
  %121 = load i32, i32* @HOST_MASK, align 4
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %120, %109
  br label %144

123:                                              ; preds = %106
  %124 = load i8*, i8** %14, align 8
  %125 = call i64 @strtoul(i8* %124, i8** %15, i32 0)
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %10, align 4
  %127 = load i8*, i8** %15, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %123
  %132 = load i32, i32* %10, align 4
  %133 = icmp sgt i32 %132, 32
  br i1 %133, label %134, label %135

134:                                              ; preds = %131, %123
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %196

135:                                              ; preds = %131
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, i32* @HOST_MASK, align 4
  %140 = load i32, i32* %10, align 4
  %141 = sub nsw i32 32, %140
  %142 = shl i32 %139, %141
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %138, %135
  br label %144

144:                                              ; preds = %143, %122
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @RIP_DEFAULT, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %196

153:                                              ; preds = %147, %144
  %154 = load i32, i32* %10, align 4
  %155 = xor i32 %154, -1
  %156 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %155, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %196

161:                                              ; preds = %153
  %162 = load i32, i32* %10, align 4
  %163 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %162, %164
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @RIP_DEFAULT, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %196

173:                                              ; preds = %167, %161
  %174 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = ashr i32 %175, 24
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @RIP_DEFAULT, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %196

184:                                              ; preds = %178, %173
  %185 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %186, 24
  %188 = icmp eq i32 %187, 255
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %196

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %6, align 8
  store i32 %192, i32* %193, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load i32*, i32** %7, align 8
  store i32 %194, i32* %195, align 4
  store i32 1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %196

196:                                              ; preds = %190, %189, %183, %172, %160, %152, %134, %103, %36
  %197 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %197)
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local %struct.netent* @getnetbyname(i8*) #2

declare dso_local i32 @inet_aton(i8*, %struct.in_addr*) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @std_mask(i32) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local i64 @strtoul(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
