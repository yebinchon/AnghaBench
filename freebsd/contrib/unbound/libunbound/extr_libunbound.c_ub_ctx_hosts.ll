; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_hosts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_hosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@UB_AFTERFINAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"/etc/hosts\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@UB_READFILE = common dso_local global i32 0, align 4
@UB_SYNTAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"AAAA\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@UB_NOMEM = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_ctx_hosts(%struct.ub_ctx* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.ub_ctx* %0, %struct.ub_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %13, i32 0, i32 0
  %15 = call i32 @lock_basic_lock(i32* %14)
  %16 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %21, i32 0, i32 0
  %23 = call i32 @lock_basic_unlock(i32* %22)
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* @errno, align 4
  %25 = load i32, i32* @UB_AFTERFINAL, align 4
  store i32 %25, i32* %3, align 4
  br label %249

26:                                               ; preds = %2
  %27 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %27, i32 0, i32 0
  %29 = call i32 @lock_basic_unlock(i32* %28)
  %30 = load i8*, i8** %5, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i8*, i8** %5, align 8
  %35 = call i32* @fopen(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @UB_READFILE, align 4
  store i32 %39, i32* %3, align 4
  br label %249

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %244, %116, %110, %69, %40
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @fgets(i8* %42, i32 1024, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %245

46:                                               ; preds = %41
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 1023
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  store i8* %48, i8** %9, align 8
  br label %49

49:                                               ; preds = %61, %46
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %9, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 9
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i1 [ true, %49 ], [ %58, %54 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %9, align 8
  br label %49

64:                                               ; preds = %59
  %65 = load i8*, i8** %9, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 35
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %41

70:                                               ; preds = %64
  %71 = load i8*, i8** %9, align 8
  store i8* %71, i8** %10, align 8
  br label %72

72:                                               ; preds = %89, %70
  %73 = load i8*, i8** %9, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @isxdigit(i8 zeroext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %72
  %78 = load i8*, i8** %9, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 46
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 58
  br label %87

87:                                               ; preds = %82, %77, %72
  %88 = phi i1 [ true, %77 ], [ true, %72 ], [ %86, %82 ]
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  br label %72

92:                                               ; preds = %87
  %93 = load i8*, i8** %9, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 13
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %9, align 8
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i8*, i8** %9, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 10
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load i8*, i8** %9, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105, %100
  br label %41

111:                                              ; preds = %105
  %112 = load i8*, i8** %9, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 37
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %41

117:                                              ; preds = %111
  %118 = load i8*, i8** %9, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 32
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load i8*, i8** %9, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 9
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @fclose(i32* %128)
  %130 = load i32, i32* @EINVAL, align 4
  store i32 %130, i32* @errno, align 4
  %131 = load i32, i32* @UB_SYNTAX, align 4
  store i32 %131, i32* %3, align 4
  br label %249

132:                                              ; preds = %122, %117
  %133 = load i8*, i8** %9, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %9, align 8
  store i8 0, i8* %133, align 1
  br label %135

135:                                              ; preds = %240, %132
  %136 = load i8*, i8** %9, align 8
  %137 = load i8, i8* %136, align 1
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %139, label %244

139:                                              ; preds = %135
  br label %140

140:                                              ; preds = %162, %139
  %141 = load i8*, i8** %9, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 32
  br i1 %144, label %160, label %145

145:                                              ; preds = %140
  %146 = load i8*, i8** %9, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 9
  br i1 %149, label %160, label %150

150:                                              ; preds = %145
  %151 = load i8*, i8** %9, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 10
  br i1 %154, label %160, label %155

155:                                              ; preds = %150
  %156 = load i8*, i8** %9, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 13
  br label %160

160:                                              ; preds = %155, %150, %145, %140
  %161 = phi i1 [ true, %150 ], [ true, %145 ], [ true, %140 ], [ %159, %155 ]
  br i1 %161, label %162, label %165

162:                                              ; preds = %160
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %9, align 8
  br label %140

165:                                              ; preds = %160
  %166 = load i8*, i8** %9, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %165
  %171 = load i8*, i8** %9, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 35
  br i1 %174, label %175, label %176

175:                                              ; preds = %170, %165
  br label %244

176:                                              ; preds = %170
  %177 = load i8*, i8** %9, align 8
  store i8* %177, i8** %11, align 8
  br label %178

178:                                              ; preds = %190, %176
  %179 = load i8*, i8** %9, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp sle i32 33, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load i8*, i8** %9, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp sle i32 %186, 126
  br label %188

188:                                              ; preds = %183, %178
  %189 = phi i1 [ false, %178 ], [ %187, %183 ]
  br i1 %189, label %190, label %193

190:                                              ; preds = %188
  %191 = load i8*, i8** %9, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %9, align 8
  br label %178

193:                                              ; preds = %188
  %194 = load i8*, i8** %9, align 8
  %195 = load i8, i8* %194, align 1
  %196 = icmp ne i8 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i8*, i8** %9, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %9, align 8
  store i8 0, i8* %198, align 1
  br label %200

200:                                              ; preds = %197, %193
  %201 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %202 = load i8*, i8** %11, align 8
  %203 = load i8*, i8** %10, align 8
  %204 = call i64 @str_is_ip6(i8* %203)
  %205 = icmp ne i64 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %208 = load i8*, i8** %10, align 8
  %209 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %201, i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %202, i8* %207, i8* %208)
  %210 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %211 = call i8* @strdup(i8* %210)
  store i8* %211, i8** %12, align 8
  %212 = load i8*, i8** %12, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %219, label %214

214:                                              ; preds = %200
  %215 = load i32*, i32** %6, align 8
  %216 = call i32 @fclose(i32* %215)
  %217 = load i32, i32* @ENOMEM, align 4
  store i32 %217, i32* @errno, align 4
  %218 = load i32, i32* @UB_NOMEM, align 4
  store i32 %218, i32* %3, align 4
  br label %249

219:                                              ; preds = %200
  %220 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %221 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %220, i32 0, i32 0
  %222 = call i32 @lock_basic_lock(i32* %221)
  %223 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %224 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %223, i32 0, i32 1
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  %229 = load i8*, i8** %12, align 8
  %230 = call i32 @cfg_strlist_insert(i32* %228, i8* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %240, label %232

232:                                              ; preds = %219
  %233 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %234 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %233, i32 0, i32 0
  %235 = call i32 @lock_basic_unlock(i32* %234)
  %236 = load i32*, i32** %6, align 8
  %237 = call i32 @fclose(i32* %236)
  %238 = load i32, i32* @ENOMEM, align 4
  store i32 %238, i32* @errno, align 4
  %239 = load i32, i32* @UB_NOMEM, align 4
  store i32 %239, i32* %3, align 4
  br label %249

240:                                              ; preds = %219
  %241 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %242 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %241, i32 0, i32 0
  %243 = call i32 @lock_basic_unlock(i32* %242)
  br label %135

244:                                              ; preds = %175, %135
  br label %41

245:                                              ; preds = %41
  %246 = load i32*, i32** %6, align 8
  %247 = call i32 @fclose(i32* %246)
  %248 = load i32, i32* @UB_NOERROR, align 4
  store i32 %248, i32* %3, align 4
  br label %249

249:                                              ; preds = %245, %232, %214, %127, %38, %20
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @isxdigit(i8 zeroext) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i64 @str_is_ip6(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @cfg_strlist_insert(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
