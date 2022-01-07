; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsvc/extr_yp_update.c_yp_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsvc/extr_yp_update.c_yp_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypupdate_args = type { i8*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32, i8* }
%struct.ypdelete_args = type { i8*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32* }
%struct.timeval = type { i32, i64 }

@MAXNETNAMELEN = common dso_local global i32 0, align 4
@YPU_PROG = common dso_local global i32 0, align 4
@YPU_VERS = common dso_local global i32 0, align 4
@YPERR_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@YPERR_RPC = common dso_local global i32 0, align 4
@YPERR_BADARGS = common dso_local global i32 0, align 4
@WINDOW = common dso_local global i32 0, align 4
@YPERR_RESRC = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i32 0, align 4
@YPU_CHANGE = common dso_local global i32 0, align 4
@xdr_ypupdate_args = common dso_local global i32 0, align 4
@xdr_u_int = common dso_local global i32 0, align 4
@RPC_SUCCESS = common dso_local global i32 0, align 4
@RPC_AUTHERROR = common dso_local global i32 0, align 4
@YPERR_ACCESS = common dso_local global i32 0, align 4
@YPU_INSERT = common dso_local global i32 0, align 4
@YPU_DELETE = common dso_local global i32 0, align 4
@xdr_ypdelete_args = common dso_local global i32 0, align 4
@YPU_STORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yp_update(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ypupdate_args, align 8
  %20 = alloca %struct.ypdelete_args, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.timeval, align 8
  %26 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %27 = load i32, i32* @MAXNETNAMELEN, align 4
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %22, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %23, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @yp_master(i8* %32, i8* %33, i8** %16)
  store i32 %34, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %7
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %216

38:                                               ; preds = %7
  %39 = load i8*, i8** %16, align 8
  %40 = load i32, i32* @YPU_PROG, align 4
  %41 = load i32, i32* @YPU_VERS, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @getrpcport(i8* %39, i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @YPERR_DOMAIN, align 4
  store i32 %46, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %216

47:                                               ; preds = %38
  %48 = load i8*, i8** %16, align 8
  %49 = load i32, i32* @YPU_PROG, align 4
  %50 = load i32, i32* @YPU_VERS, align 4
  %51 = call %struct.TYPE_9__* @clnt_create(i8* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %21, align 8
  %52 = icmp eq %struct.TYPE_9__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @YPERR_RPC, align 4
  store i32 %54, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %216

55:                                               ; preds = %47
  %56 = load i8*, i8** %16, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @host2netname(i8* %31, i8* %56, i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %62 = call i32 @clnt_destroy(%struct.TYPE_9__* %61)
  %63 = load i32, i32* @YPERR_BADARGS, align 4
  store i32 %63, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %216

64:                                               ; preds = %55
  %65 = call i32 @key_gendes(i32* %24)
  %66 = load i32, i32* @WINDOW, align 4
  %67 = call i64 @authdes_create(i8* %31, i32 %66, i32* null, i32* %24)
  %68 = inttoptr i64 %67 to i32*
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  %71 = icmp eq i32* %68, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %74 = call i32 @clnt_destroy(%struct.TYPE_9__* %73)
  %75 = load i32, i32* @YPERR_RESRC, align 4
  store i32 %75, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %216

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @TIMEOUT, align 4
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* %11, align 4
  switch i32 %80, label %204 [
    i32 131, label %81
    i32 129, label %113
    i32 130, label %145
    i32 128, label %172
  ]

81:                                               ; preds = %76
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds %struct.ypupdate_args, %struct.ypupdate_args* %19, i32 0, i32 0
  store i8* %82, i8** %83, align 8
  %84 = load i32, i32* %13, align 4
  %85 = getelementptr inbounds %struct.ypupdate_args, %struct.ypupdate_args* %19, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = getelementptr inbounds %struct.ypupdate_args, %struct.ypupdate_args* %19, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %15, align 4
  %91 = getelementptr inbounds %struct.ypupdate_args, %struct.ypupdate_args* %19, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = getelementptr inbounds %struct.ypupdate_args, %struct.ypupdate_args* %19, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %97 = load i32, i32* @YPU_CHANGE, align 4
  %98 = load i32, i32* @xdr_ypupdate_args, align 4
  %99 = load i32, i32* @xdr_u_int, align 4
  %100 = call i32 @clnt_call(%struct.TYPE_9__* %96, i32 %97, i32 %98, %struct.ypupdate_args* %19, i32 %99, i32* %18, %struct.timeval* byval(%struct.timeval) align 8 %25)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* @RPC_SUCCESS, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %81
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* @RPC_AUTHERROR, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @YPERR_ACCESS, align 4
  store i32 %108, i32* %18, align 4
  br label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @YPERR_RPC, align 4
  store i32 %110, i32* %18, align 4
  br label %111

111:                                              ; preds = %109, %107
  br label %112

112:                                              ; preds = %111, %81
  br label %206

113:                                              ; preds = %76
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds %struct.ypupdate_args, %struct.ypupdate_args* %19, i32 0, i32 0
  store i8* %114, i8** %115, align 8
  %116 = load i32, i32* %13, align 4
  %117 = getelementptr inbounds %struct.ypupdate_args, %struct.ypupdate_args* %19, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = getelementptr inbounds %struct.ypupdate_args, %struct.ypupdate_args* %19, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* %15, align 4
  %123 = getelementptr inbounds %struct.ypupdate_args, %struct.ypupdate_args* %19, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = getelementptr inbounds %struct.ypupdate_args, %struct.ypupdate_args* %19, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %129 = load i32, i32* @YPU_INSERT, align 4
  %130 = load i32, i32* @xdr_ypupdate_args, align 4
  %131 = load i32, i32* @xdr_u_int, align 4
  %132 = call i32 @clnt_call(%struct.TYPE_9__* %128, i32 %129, i32 %130, %struct.ypupdate_args* %19, i32 %131, i32* %18, %struct.timeval* byval(%struct.timeval) align 8 %25)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* @RPC_SUCCESS, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %113
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* @RPC_AUTHERROR, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* @YPERR_ACCESS, align 4
  store i32 %140, i32* %18, align 4
  br label %143

141:                                              ; preds = %135
  %142 = load i32, i32* @YPERR_RPC, align 4
  store i32 %142, i32* %18, align 4
  br label %143

143:                                              ; preds = %141, %139
  br label %144

144:                                              ; preds = %143, %113
  br label %206

145:                                              ; preds = %76
  %146 = load i8*, i8** %10, align 8
  %147 = getelementptr inbounds %struct.ypdelete_args, %struct.ypdelete_args* %20, i32 0, i32 0
  store i8* %146, i8** %147, align 8
  %148 = load i32, i32* %13, align 4
  %149 = getelementptr inbounds %struct.ypdelete_args, %struct.ypdelete_args* %20, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load i8*, i8** %12, align 8
  %152 = getelementptr inbounds %struct.ypdelete_args, %struct.ypdelete_args* %20, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %155 = load i32, i32* @YPU_DELETE, align 4
  %156 = load i32, i32* @xdr_ypdelete_args, align 4
  %157 = bitcast %struct.ypdelete_args* %20 to %struct.ypupdate_args*
  %158 = load i32, i32* @xdr_u_int, align 4
  %159 = call i32 @clnt_call(%struct.TYPE_9__* %154, i32 %155, i32 %156, %struct.ypupdate_args* %157, i32 %158, i32* %18, %struct.timeval* byval(%struct.timeval) align 8 %25)
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* @RPC_SUCCESS, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %145
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* @RPC_AUTHERROR, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i32, i32* @YPERR_ACCESS, align 4
  store i32 %167, i32* %18, align 4
  br label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @YPERR_RPC, align 4
  store i32 %169, i32* %18, align 4
  br label %170

170:                                              ; preds = %168, %166
  br label %171

171:                                              ; preds = %170, %145
  br label %206

172:                                              ; preds = %76
  %173 = load i8*, i8** %10, align 8
  %174 = getelementptr inbounds %struct.ypupdate_args, %struct.ypupdate_args* %19, i32 0, i32 0
  store i8* %173, i8** %174, align 8
  %175 = load i32, i32* %13, align 4
  %176 = getelementptr inbounds %struct.ypupdate_args, %struct.ypupdate_args* %19, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load i8*, i8** %12, align 8
  %179 = getelementptr inbounds %struct.ypupdate_args, %struct.ypupdate_args* %19, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  store i8* %178, i8** %180, align 8
  %181 = load i32, i32* %15, align 4
  %182 = getelementptr inbounds %struct.ypupdate_args, %struct.ypupdate_args* %19, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load i8*, i8** %14, align 8
  %185 = getelementptr inbounds %struct.ypupdate_args, %struct.ypupdate_args* %19, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  store i8* %184, i8** %186, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %188 = load i32, i32* @YPU_STORE, align 4
  %189 = load i32, i32* @xdr_ypupdate_args, align 4
  %190 = load i32, i32* @xdr_u_int, align 4
  %191 = call i32 @clnt_call(%struct.TYPE_9__* %187, i32 %188, i32 %189, %struct.ypupdate_args* %19, i32 %190, i32* %18, %struct.timeval* byval(%struct.timeval) align 8 %25)
  store i32 %191, i32* %17, align 4
  %192 = load i32, i32* @RPC_SUCCESS, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %203

194:                                              ; preds = %172
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* @RPC_AUTHERROR, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i32, i32* @YPERR_ACCESS, align 4
  store i32 %199, i32* %18, align 4
  br label %202

200:                                              ; preds = %194
  %201 = load i32, i32* @YPERR_RPC, align 4
  store i32 %201, i32* %18, align 4
  br label %202

202:                                              ; preds = %200, %198
  br label %203

203:                                              ; preds = %202, %172
  br label %206

204:                                              ; preds = %76
  %205 = load i32, i32* @YPERR_BADARGS, align 4
  store i32 %205, i32* %18, align 4
  br label %206

206:                                              ; preds = %204, %203, %171, %144, %112
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @auth_destroy(i32* %209)
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %212 = call i32 @clnt_destroy(%struct.TYPE_9__* %211)
  %213 = load i8*, i8** %16, align 8
  %214 = call i32 @free(i8* %213)
  %215 = load i32, i32* %18, align 4
  store i32 %215, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %216

216:                                              ; preds = %206, %72, %60, %53, %45, %36
  %217 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %217)
  %218 = load i32, i32* %8, align 4
  ret i32 %218
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @yp_master(i8*, i8*, i8**) #2

declare dso_local i64 @getrpcport(i8*, i32, i32, i32) #2

declare dso_local %struct.TYPE_9__* @clnt_create(i8*, i32, i32, i8*) #2

declare dso_local i32 @host2netname(i8*, i8*, i8*) #2

declare dso_local i32 @clnt_destroy(%struct.TYPE_9__*) #2

declare dso_local i32 @key_gendes(i32*) #2

declare dso_local i64 @authdes_create(i8*, i32, i32*, i32*) #2

declare dso_local i32 @clnt_call(%struct.TYPE_9__*, i32, i32, %struct.ypupdate_args*, i32, i32*, %struct.timeval* byval(%struct.timeval) align 8) #2

declare dso_local i32 @auth_destroy(i32*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
