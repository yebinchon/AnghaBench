; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atalk.c_ataddr_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atalk.c_ataddr_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnamemem = type { i32, i8*, %struct.hnamemem* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i8*)*, i32 }

@ataddr_string.first = internal global i32 1, align 4
@.str = private unnamed_addr constant [17 x i8] c"/etc/atalk.names\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%d.%d %256s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%d %256s\00", align 1
@hnametable = common dso_local global %struct.hnamemem* null, align 8
@HASHNAMESIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"ataddr_string: strdup(nambuf)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*, i32, i32)* @ataddr_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ataddr_string(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hnamemem*, align 8
  %9 = alloca %struct.hnamemem*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [257 x i8], align 16
  %12 = alloca i32*, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %16, 8
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @ataddr_string.first, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %119

22:                                               ; preds = %3
  store i32 0, i32* @ataddr_string.first, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %119

28:                                               ; preds = %22
  %29 = call i32* @fopen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %12, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %119

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %115, %72, %52, %31
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %34 = load i32*, i32** %12, align 8
  %35 = call i64 @fgets(i8* %33, i32 256, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %116

37:                                               ; preds = %32
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %39 = load i8, i8* %38, align 16
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %44 = load i8, i8* %43, align 16
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %49 = load i8, i8* %48, align 16
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 35
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %42, %37
  br label %32

53:                                               ; preds = %47
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %55 = getelementptr inbounds [257 x i8], [257 x i8]* %11, i64 0, i64 0
  %56 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %14, i32* %15, i8* %55)
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* %14, align 4
  %60 = shl i32 %59, 8
  %61 = load i32, i32* %15, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %15, align 4
  br label %74

63:                                               ; preds = %53
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %65 = getelementptr inbounds [257 x i8], [257 x i8]* %11, i64 0, i64 0
  %66 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %14, i8* %65)
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %14, align 4
  %70 = shl i32 %69, 8
  %71 = or i32 %70, 255
  store i32 %71, i32* %15, align 4
  br label %73

72:                                               ; preds = %63
  br label %32

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %58
  %75 = load %struct.hnamemem*, %struct.hnamemem** @hnametable, align 8
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @HASHNAMESIZE, align 4
  %78 = sub nsw i32 %77, 1
  %79 = and i32 %76, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %75, i64 %80
  store %struct.hnamemem* %81, %struct.hnamemem** %8, align 8
  br label %82

82:                                               ; preds = %88, %74
  %83 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %84 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %83, i32 0, i32 2
  %85 = load %struct.hnamemem*, %struct.hnamemem** %84, align 8
  %86 = icmp ne %struct.hnamemem* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %90 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %89, i32 0, i32 2
  %91 = load %struct.hnamemem*, %struct.hnamemem** %90, align 8
  store %struct.hnamemem* %91, %struct.hnamemem** %8, align 8
  br label %82

92:                                               ; preds = %82
  %93 = load i32, i32* %15, align 4
  %94 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %95 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = call i8* @newhnamemem(%struct.TYPE_7__* %96)
  %98 = bitcast i8* %97 to %struct.hnamemem*
  %99 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %100 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %99, i32 0, i32 2
  store %struct.hnamemem* %98, %struct.hnamemem** %100, align 8
  %101 = getelementptr inbounds [257 x i8], [257 x i8]* %11, i64 0, i64 0
  %102 = call i8* @strdup(i8* %101)
  %103 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %104 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %106 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %92
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %111, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = call i32 %112(%struct.TYPE_7__* %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %109, %92
  br label %32

116:                                              ; preds = %32
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @fclose(i32* %117)
  br label %119

119:                                              ; preds = %116, %28, %22, %3
  %120 = load %struct.hnamemem*, %struct.hnamemem** @hnametable, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @HASHNAMESIZE, align 4
  %123 = sub nsw i32 %122, 1
  %124 = and i32 %121, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %120, i64 %125
  store %struct.hnamemem* %126, %struct.hnamemem** %8, align 8
  br label %127

127:                                              ; preds = %143, %119
  %128 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %129 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %128, i32 0, i32 2
  %130 = load %struct.hnamemem*, %struct.hnamemem** %129, align 8
  %131 = icmp ne %struct.hnamemem* %130, null
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %134 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %140 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** %4, align 8
  br label %251

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %145 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %144, i32 0, i32 2
  %146 = load %struct.hnamemem*, %struct.hnamemem** %145, align 8
  store %struct.hnamemem* %146, %struct.hnamemem** %8, align 8
  br label %127

147:                                              ; preds = %127
  %148 = load i32, i32* %10, align 4
  %149 = or i32 %148, 255
  store i32 %149, i32* %10, align 4
  %150 = load %struct.hnamemem*, %struct.hnamemem** @hnametable, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @HASHNAMESIZE, align 4
  %153 = sub nsw i32 %152, 1
  %154 = and i32 %151, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %150, i64 %155
  store %struct.hnamemem* %156, %struct.hnamemem** %9, align 8
  br label %157

157:                                              ; preds = %205, %147
  %158 = load %struct.hnamemem*, %struct.hnamemem** %9, align 8
  %159 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %158, i32 0, i32 2
  %160 = load %struct.hnamemem*, %struct.hnamemem** %159, align 8
  %161 = icmp ne %struct.hnamemem* %160, null
  br i1 %161, label %162, label %209

162:                                              ; preds = %157
  %163 = load %struct.hnamemem*, %struct.hnamemem** %9, align 8
  %164 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %204

168:                                              ; preds = %162
  %169 = load i32, i32* %6, align 4
  %170 = shl i32 %169, 8
  %171 = load i32, i32* %7, align 4
  %172 = or i32 %170, %171
  %173 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %174 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %176 = call i8* @newhnamemem(%struct.TYPE_7__* %175)
  %177 = bitcast i8* %176 to %struct.hnamemem*
  %178 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %179 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %178, i32 0, i32 2
  store %struct.hnamemem* %177, %struct.hnamemem** %179, align 8
  %180 = getelementptr inbounds [257 x i8], [257 x i8]* %11, i64 0, i64 0
  %181 = load %struct.hnamemem*, %struct.hnamemem** %9, align 8
  %182 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %180, i32 257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %183, i32 %184)
  %186 = getelementptr inbounds [257 x i8], [257 x i8]* %11, i64 0, i64 0
  %187 = call i8* @strdup(i8* %186)
  %188 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %189 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %188, i32 0, i32 1
  store i8* %187, i8** %189, align 8
  %190 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %191 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = icmp eq i8* %192, null
  br i1 %193, label %194, label %200

194:                                              ; preds = %168
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %196, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %199 = call i32 %197(%struct.TYPE_7__* %198, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %200

200:                                              ; preds = %194, %168
  %201 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %202 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  store i8* %203, i8** %4, align 8
  br label %251

204:                                              ; preds = %162
  br label %205

205:                                              ; preds = %204
  %206 = load %struct.hnamemem*, %struct.hnamemem** %9, align 8
  %207 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %206, i32 0, i32 2
  %208 = load %struct.hnamemem*, %struct.hnamemem** %207, align 8
  store %struct.hnamemem* %208, %struct.hnamemem** %9, align 8
  br label %157

209:                                              ; preds = %157
  %210 = load i32, i32* %6, align 4
  %211 = shl i32 %210, 8
  %212 = load i32, i32* %7, align 4
  %213 = or i32 %211, %212
  %214 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %215 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %217 = call i8* @newhnamemem(%struct.TYPE_7__* %216)
  %218 = bitcast i8* %217 to %struct.hnamemem*
  %219 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %220 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %219, i32 0, i32 2
  store %struct.hnamemem* %218, %struct.hnamemem** %220, align 8
  %221 = load i32, i32* %7, align 4
  %222 = icmp ne i32 %221, 255
  br i1 %222, label %223, label %228

223:                                              ; preds = %209
  %224 = getelementptr inbounds [257 x i8], [257 x i8]* %11, i64 0, i64 0
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* %7, align 4
  %227 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %224, i32 257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %225, i32 %226)
  br label %232

228:                                              ; preds = %209
  %229 = getelementptr inbounds [257 x i8], [257 x i8]* %11, i64 0, i64 0
  %230 = load i32, i32* %6, align 4
  %231 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %229, i32 257, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %230)
  br label %232

232:                                              ; preds = %228, %223
  %233 = getelementptr inbounds [257 x i8], [257 x i8]* %11, i64 0, i64 0
  %234 = call i8* @strdup(i8* %233)
  %235 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %236 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %235, i32 0, i32 1
  store i8* %234, i8** %236, align 8
  %237 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %238 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %237, i32 0, i32 1
  %239 = load i8*, i8** %238, align 8
  %240 = icmp eq i8* %239, null
  br i1 %240, label %241, label %247

241:                                              ; preds = %232
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %243, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %246 = call i32 %244(%struct.TYPE_7__* %245, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %247

247:                                              ; preds = %241, %232
  %248 = load %struct.hnamemem*, %struct.hnamemem** %8, align 8
  %249 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  store i8* %250, i8** %4, align 8
  br label %251

251:                                              ; preds = %247, %200, %138
  %252 = load i8*, i8** %4, align 8
  ret i8* %252
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i8* @newhnamemem(%struct.TYPE_7__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
