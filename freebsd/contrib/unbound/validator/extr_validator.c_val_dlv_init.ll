; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_dlv_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_dlv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32* }
%struct.val_qstate = type { i64, i64, i64, %struct.TYPE_8__, i32*, i32, i32*, %struct.TYPE_10__*, i32*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i64, i32, i32* }
%struct.TYPE_10__ = type { i64, i32* }
%struct.val_env = type { i32 }

@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"DLV init look\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"DLV lookup within DLV repository denied\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Out of memory preparing DLV lookup\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"DLV name\00", align 1
@LDNS_RR_TYPE_DLV = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"insecure_at\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ask above dlv repo\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"ask above insecure endpoint\00", align 1
@VAL_DLVLOOKUP_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.val_qstate*, %struct.val_env*, i32)* @val_dlv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @val_dlv_init(%struct.module_qstate* %0, %struct.val_qstate* %1, %struct.val_env* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.val_qstate*, align 8
  %8 = alloca %struct.val_env*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.module_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %6, align 8
  store %struct.val_qstate* %1, %struct.val_qstate** %7, align 8
  store %struct.val_env* %2, %struct.val_env** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.module_qstate* null, %struct.module_qstate** %12, align 8
  %13 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %14 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = call i32 @log_assert(%struct.TYPE_9__* %19)
  %21 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %22 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %21, i32 0, i32 9
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = call i32 @log_assert(%struct.TYPE_9__* %23)
  %25 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %26 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %25, i32 0, i32 4
  store i32* null, i32** %26, align 8
  %27 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %28 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %30 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %29, i32 0, i32 6
  store i32* null, i32** %30, align 8
  %31 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %32 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %34 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %33, i32 0, i32 8
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %4
  %38 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %39 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %38, i32 0, i32 8
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %10, align 8
  %41 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %42 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %11, align 8
  br label %62

44:                                               ; preds = %4
  %45 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %46 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %10, align 8
  %49 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %50 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %11, align 8
  %53 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %54 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = call i32 @dname_remove_label(i32** %10, i64* %11)
  br label %61

61:                                               ; preds = %59, %44
  br label %62

62:                                               ; preds = %61, %37
  %63 = load i32, i32* @VERB_ALGO, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %66 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %67 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @log_nametypeclass(i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %64, i64 %65, i32 %69)
  %71 = load i32*, i32** %10, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load i64, i64* %11, align 8
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %73, %62
  %77 = phi i1 [ false, %62 ], [ %75, %73 ]
  %78 = zext i1 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to %struct.TYPE_9__*
  %81 = call i32 @log_assert(%struct.TYPE_9__* %80)
  %82 = load i32*, i32** %10, align 8
  %83 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %84 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i64 @dname_subdomain_c(i32* %82, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %76
  %95 = load i32, i32* @VERB_ALGO, align 4
  %96 = call i32 @verbose(i32 %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %367

97:                                               ; preds = %76
  %98 = load i64, i64* %11, align 8
  %99 = sub i64 %98, 1
  %100 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %101 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %99, %108
  %110 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %111 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %113 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %116 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i8* @regional_alloc(i32 %114, i64 %117)
  %119 = bitcast i8* %118 to i32*
  %120 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %121 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %120, i32 0, i32 4
  store i32* %119, i32** %121, align 8
  %122 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %123 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %97
  %127 = call i32 @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %128 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @val_error(%struct.module_qstate* %128, i32 %129)
  store i32 %130, i32* %5, align 4
  br label %367

131:                                              ; preds = %97
  %132 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %133 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = load i64, i64* %11, align 8
  %137 = sub i64 %136, 1
  %138 = call i32 @memmove(i32* %134, i32* %135, i64 %137)
  %139 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %140 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* %11, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = getelementptr inbounds i32, i32* %143, i64 -1
  %145 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %146 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %155 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %154, i32 0, i32 0
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @memmove(i32* %144, i32* %153, i64 %162)
  %164 = load i32, i32* @VERB_ALGO, align 4
  %165 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %166 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* @LDNS_RR_TYPE_DLV, align 8
  %169 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %170 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @log_nametypeclass(i32 %164, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %167, i64 %168, i32 %172)
  store i32* null, i32** %10, align 8
  %174 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %175 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %174, i32 0, i32 7
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = icmp ne %struct.TYPE_10__* %176, null
  br i1 %177, label %178, label %195

178:                                              ; preds = %131
  %179 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %180 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %179, i32 0, i32 7
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = call i64 @key_entry_isnull(%struct.TYPE_10__* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %178
  %185 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %186 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %185, i32 0, i32 7
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  store i32* %189, i32** %10, align 8
  %190 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %191 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %190, i32 0, i32 7
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %11, align 8
  br label %195

195:                                              ; preds = %184, %178, %131
  %196 = load i32*, i32** %10, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %274

198:                                              ; preds = %195
  %199 = load i64, i64* %11, align 8
  %200 = sub i64 %199, 1
  %201 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %202 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %201, i32 0, i32 0
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = add i64 %200, %209
  %211 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %212 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %211, i32 0, i32 1
  store i64 %210, i64* %212, align 8
  %213 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %214 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %217 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i8* @regional_alloc(i32 %215, i64 %218)
  %220 = bitcast i8* %219 to i32*
  %221 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %222 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %221, i32 0, i32 6
  store i32* %220, i32** %222, align 8
  %223 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %224 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %223, i32 0, i32 6
  %225 = load i32*, i32** %224, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %232, label %227

227:                                              ; preds = %198
  %228 = call i32 @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %229 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @val_error(%struct.module_qstate* %229, i32 %230)
  store i32 %231, i32* %5, align 4
  br label %367

232:                                              ; preds = %198
  %233 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %234 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %233, i32 0, i32 6
  %235 = load i32*, i32** %234, align 8
  %236 = load i32*, i32** %10, align 8
  %237 = load i64, i64* %11, align 8
  %238 = sub i64 %237, 1
  %239 = call i32 @memmove(i32* %235, i32* %236, i64 %238)
  %240 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %241 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %240, i32 0, i32 6
  %242 = load i32*, i32** %241, align 8
  %243 = load i64, i64* %11, align 8
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  %245 = getelementptr inbounds i32, i32* %244, i64 -1
  %246 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %247 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %246, i32 0, i32 0
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %256 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %255, i32 0, i32 0
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @memmove(i32* %245, i32* %254, i64 %263)
  %265 = load i32, i32* @VERB_ALGO, align 4
  %266 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %267 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %266, i32 0, i32 6
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %270 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @log_nametypeclass(i32 %265, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %268, i64 0, i32 %272)
  br label %274

274:                                              ; preds = %232, %195
  br label %275

275:                                              ; preds = %342, %274
  %276 = load %struct.val_env*, %struct.val_env** %8, align 8
  %277 = getelementptr inbounds %struct.val_env, %struct.val_env* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %280 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %279, i32 0, i32 4
  %281 = load i32*, i32** %280, align 8
  %282 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %283 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %286 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %290 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %289, i32 0, i32 0
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %295 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %294, i32 0, i32 0
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 1
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %298, align 4
  %300 = call i64 @val_neg_dlvlookup(i32 %278, i32* %281, i64 %284, i32 %288, i32 %293, i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %343

302:                                              ; preds = %275
  %303 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %304 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %303, i32 0, i32 4
  %305 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %306 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %305, i32 0, i32 0
  %307 = call i32 @dname_remove_label(i32** %304, i64* %306)
  %308 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %309 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %308, i32 0, i32 4
  %310 = load i32*, i32** %309, align 8
  %311 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %312 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %311, i32 0, i32 0
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_6__*, %struct.TYPE_6__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = call i64 @dname_subdomain_c(i32* %310, i32* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %325, label %322

322:                                              ; preds = %302
  %323 = load i32, i32* @VERB_ALGO, align 4
  %324 = call i32 @verbose(i32 %323, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %367

325:                                              ; preds = %302
  %326 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %327 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %326, i32 0, i32 6
  %328 = load i32*, i32** %327, align 8
  %329 = icmp ne i32* %328, null
  br i1 %329, label %330, label %342

330:                                              ; preds = %325
  %331 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %332 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %331, i32 0, i32 4
  %333 = load i32*, i32** %332, align 8
  %334 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %335 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %334, i32 0, i32 6
  %336 = load i32*, i32** %335, align 8
  %337 = call i64 @dname_subdomain_c(i32* %333, i32* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %342, label %339

339:                                              ; preds = %330
  %340 = load i32, i32* @VERB_ALGO, align 4
  %341 = call i32 @verbose(i32 %340, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %367

342:                                              ; preds = %330, %325
  br label %275

343:                                              ; preds = %275
  %344 = load i32, i32* @VAL_DLVLOOKUP_STATE, align 4
  %345 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %346 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %345, i32 0, i32 5
  store i32 %344, i32* %346, align 8
  %347 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %348 = load i32, i32* %9, align 4
  %349 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %350 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %349, i32 0, i32 4
  %351 = load i32*, i32** %350, align 8
  %352 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %353 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @LDNS_RR_TYPE_DLV, align 8
  %356 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %357 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %356, i32 0, i32 3
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = call i32 @generate_request(%struct.module_qstate* %347, i32 %348, i32* %351, i64 %354, i64 %355, i32 %359, i32 0, %struct.module_qstate** %12, i32 0)
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %366, label %362

362:                                              ; preds = %343
  %363 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %364 = load i32, i32* %9, align 4
  %365 = call i32 @val_error(%struct.module_qstate* %363, i32 %364)
  store i32 %365, i32* %5, align 4
  br label %367

366:                                              ; preds = %343
  store i32 0, i32* %5, align 4
  br label %367

367:                                              ; preds = %366, %362, %339, %322, %227, %126, %94
  %368 = load i32, i32* %5, align 4
  ret i32 %368
}

declare dso_local i32 @log_assert(%struct.TYPE_9__*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32*, i64, i32) #1

declare dso_local i64 @dname_subdomain_c(i32*, i32*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i8* @regional_alloc(i32, i64) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @val_error(%struct.module_qstate*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i64 @key_entry_isnull(%struct.TYPE_10__*) #1

declare dso_local i64 @val_neg_dlvlookup(i32, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @generate_request(%struct.module_qstate*, i32, i32*, i64, i64, i32, i32, %struct.module_qstate**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
