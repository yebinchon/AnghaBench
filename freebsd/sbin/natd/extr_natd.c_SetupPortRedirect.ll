; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/natd/extr_natd.c_SetupPortRedirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/natd/extr_natd.c_SetupPortRedirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i8* }
%struct.alias_link = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"redirect_port: strdup() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"redirect_port: missing protocol\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"redirect_port: missing local address\00", align 1
@INADDR_NONE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"redirect_port: invalid local port range\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"redirect_port: missing public port\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"redirect_port: invalid public port range\00", align 1
@INADDR_ANY = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"redirect_port: invalid remote port range\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"redirect_port: port ranges must be equal in size\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"redirect_port: remote port must be 0 or equal to local port range in size\00", align 1
@mla = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"redirect_port: local port must be single in this context\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetupPortRedirect(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.in_addr, align 8
  %7 = alloca %struct.in_addr, align 8
  %8 = alloca %struct.in_addr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.alias_link*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store %struct.alias_link* null, %struct.alias_link** %20, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = call i8* @strdup(i8* %22)
  store i8* %23, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %1
  %27 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %1
  %29 = load i8*, i8** %3, align 8
  %30 = call i8* @strtok(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %17, align 8
  %31 = load i8*, i8** %17, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i8*, i8** %17, align 8
  %37 = call i32 @StrToProto(i8* %36)
  store i32 %37, i32* %16, align 4
  %38 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %38, i8** %4, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = call i32 @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %35
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 44)
  store i8* %45, i8** %18, align 8
  %46 = load i8*, i8** %18, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i8*, i8** @INADDR_NONE, align 8
  %50 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %13, align 4
  %51 = load i8*, i8** %4, align 8
  store i8* %51, i8** %5, align 8
  br label %64

52:                                               ; preds = %43
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = call i64 @StrToAddrAndPortRange(i8* %53, %struct.in_addr* %6, i8* %54, i32* %9)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @errx(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @GETLOPORT(i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @GETNUMPORTS(i32 %62)
  store i32 %63, i32* %13, align 4
  store i8* null, i8** %5, align 8
  br label %64

64:                                               ; preds = %59, %48
  %65 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %65, i8** %4, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i8*, i8** %4, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 58)
  store i8* %72, i8** %18, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i8*, i8** %4, align 8
  %77 = load i8*, i8** %17, align 8
  %78 = call i64 @StrToAddrAndPortRange(i8* %76, %struct.in_addr* %7, i8* %77, i32* %9)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %75
  br label %93

83:                                               ; preds = %70
  %84 = load i8*, i8** @INADDR_ANY, align 8
  %85 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  store i8* %84, i8** %85, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = load i8*, i8** %17, align 8
  %88 = call i64 @StrToPortRange(i8* %86, i8* %87, i32* %9)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %83
  br label %93

93:                                               ; preds = %92, %82
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @GETLOPORT(i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @GETNUMPORTS(i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %98, i8** %4, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %122

101:                                              ; preds = %93
  %102 = load i8*, i8** %4, align 8
  %103 = call i8* @strchr(i8* %102, i8 signext 58)
  store i8* %103, i8** %18, align 8
  %104 = load i8*, i8** %18, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i8*, i8** %4, align 8
  %108 = load i8*, i8** %17, align 8
  %109 = call i64 @StrToAddrAndPortRange(i8* %107, %struct.in_addr* %8, i8* %108, i32* %9)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %106
  br label %121

114:                                              ; preds = %101
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @SETLOPORT(i32 %115, i32 0)
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @SETNUMPORTS(i32 %117, i32 1)
  %119 = load i8*, i8** %4, align 8
  %120 = call i32 @StrToAddr(i8* %119, %struct.in_addr* %8)
  br label %121

121:                                              ; preds = %114, %113
  br label %129

122:                                              ; preds = %93
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @SETLOPORT(i32 %123, i32 0)
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @SETNUMPORTS(i32 %125, i32 1)
  %127 = load i8*, i8** @INADDR_ANY, align 8
  %128 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  store i8* %127, i8** %128, align 8
  br label %129

129:                                              ; preds = %122, %121
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @GETLOPORT(i32 %130)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @GETNUMPORTS(i32 %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = call i32 @errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %129
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %139
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 1
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146, %143
  %150 = call i32 @errx(i32 1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %146, %139
  store i32 0, i32* %19, align 4
  br label %152

152:                                              ; preds = %186, %151
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %189

156:                                              ; preds = %152
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %19, align 4
  %159 = add nsw i32 %157, %158
  store i32 %159, i32* %21, align 4
  %160 = load i32, i32* %15, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load i32, i32* %12, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i32 0, i32* %21, align 4
  br label %166

166:                                              ; preds = %165, %162, %156
  %167 = load i32, i32* @mla, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %19, align 4
  %170 = add nsw i32 %168, %169
  %171 = call i32 @htons(i32 %170)
  %172 = load i32, i32* %21, align 4
  %173 = call i32 @htons(i32 %172)
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %19, align 4
  %176 = add nsw i32 %174, %175
  %177 = call i32 @htons(i32 %176)
  %178 = load i32, i32* %16, align 4
  %179 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = call %struct.alias_link* @LibAliasRedirectPort(i32 %167, i8* %180, i32 %171, i8* %182, i32 %173, i8* %184, i32 %177, i32 %178)
  store %struct.alias_link* %185, %struct.alias_link** %20, align 8
  br label %186

186:                                              ; preds = %166
  %187 = load i32, i32* %19, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %19, align 4
  br label %152

189:                                              ; preds = %152
  %190 = load i8*, i8** %5, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %226

192:                                              ; preds = %189
  %193 = load %struct.alias_link*, %struct.alias_link** %20, align 8
  %194 = icmp ne %struct.alias_link* %193, null
  br i1 %194, label %195, label %226

195:                                              ; preds = %192
  %196 = load i8*, i8** %5, align 8
  %197 = call i8* @strtok(i8* %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i8* %197, i8** %4, align 8
  br label %198

198:                                              ; preds = %216, %195
  %199 = load i8*, i8** %4, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %225

201:                                              ; preds = %198
  %202 = load i8*, i8** %4, align 8
  %203 = load i8*, i8** %17, align 8
  %204 = call i64 @StrToAddrAndPortRange(i8* %202, %struct.in_addr* %6, i8* %203, i32* %9)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = call i32 @errx(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %208

208:                                              ; preds = %206, %201
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @GETLOPORT(i32 %209)
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @GETNUMPORTS(i32 %211)
  %213 = icmp ne i32 %212, 1
  br i1 %213, label %214, label %216

214:                                              ; preds = %208
  %215 = call i32 @errx(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %208
  %217 = load i32, i32* @mla, align 4
  %218 = load %struct.alias_link*, %struct.alias_link** %20, align 8
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @htons(i32 %219)
  %221 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @LibAliasAddServer(i32 %217, %struct.alias_link* %218, i8* %222, i32 %220)
  %224 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i8* %224, i8** %4, align 8
  br label %198

225:                                              ; preds = %198
  br label %226

226:                                              ; preds = %225, %192, %189
  %227 = load i8*, i8** %3, align 8
  %228 = call i32 @free(i8* %227)
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @StrToProto(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @StrToAddrAndPortRange(i8*, %struct.in_addr*, i8*, i32*) #1

declare dso_local i32 @GETLOPORT(i32) #1

declare dso_local i32 @GETNUMPORTS(i32) #1

declare dso_local i64 @StrToPortRange(i8*, i8*, i32*) #1

declare dso_local i32 @SETLOPORT(i32, i32) #1

declare dso_local i32 @SETNUMPORTS(i32, i32) #1

declare dso_local i32 @StrToAddr(i8*, %struct.in_addr*) #1

declare dso_local %struct.alias_link* @LibAliasRedirectPort(i32, i8*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @LibAliasAddServer(i32, %struct.alias_link*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
