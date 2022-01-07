; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_txn_body_read_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_txn_body_read_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.read_rep_args = type { i64*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }

@TRUE = common dso_local global i64 0, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"MD5 checksum mismatch on representation '%s'\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"SHA1 checksum mismatch on representation '%s'\00", align 1
@SVN_ERR_FS_REP_CHANGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Null rep, but offset past zero already\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_9__*)* @txn_body_read_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_read_rep(i8* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.read_rep_args*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.read_rep_args*
  store %struct.read_rep_args* %9, %struct.read_rep_args** %6, align 8
  %10 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %11 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %228

16:                                               ; preds = %2
  %17 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %18 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %23 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %28 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %33 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %36 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %40 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @rep_read_range(i32 %21, i64 %26, i64 %31, i32 %34, i64* %37, %struct.TYPE_9__* %38, i32 %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %47 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %51 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %49
  store i64 %55, i64* %53, align 8
  %56 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %57 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %227, label %62

62:                                               ; preds = %16
  %63 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %64 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %69 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %72 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @svn_checksum_update(i32 %67, i32 %70, i64 %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %78 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %83 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %86 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @svn_checksum_update(i32 %81, i32 %84, i64 %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %92 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %97 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %95, %100
  br i1 %101, label %102, label %226

102:                                              ; preds = %62
  %103 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %104 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  %107 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %108 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @svn_checksum_final(i32* %106, i32 %111, i32 %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %118 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %122 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %121, i32 0, i32 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @svn_checksum_final(i32* %120, i32 %125, i32 %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  %131 = load i64, i64* @TRUE, align 8
  %132 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %133 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 6
  store i64 %131, i64* %135, align 8
  %136 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %137 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %142 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @svn_fs_bdb__read_rep(%struct.TYPE_10__** %7, i32 %140, i64 %145, %struct.TYPE_9__* %146, i32 %149)
  %151 = call i32 @SVN_ERR(i32 %150)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %188

156:                                              ; preds = %102
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %161 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %160, i32 0, i32 1
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @svn_checksum_match(i64 %159, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %188, label %167

167:                                              ; preds = %156
  %168 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %173 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %172, i32 0, i32 1
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %181 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %182 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %181, i32 0, i32 1
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = call i32* @svn_checksum_mismatch_err(i64 %171, i32 %176, i32 %179, i32* %180, i64 %185)
  %187 = call i32* @svn_error_create(i32 %168, i32* %186, i32* null)
  store i32* %187, i32** %3, align 8
  br label %246

188:                                              ; preds = %156, %102
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %225

193:                                              ; preds = %188
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %198 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %197, i32 0, i32 1
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @svn_checksum_match(i64 %196, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %225, label %204

204:                                              ; preds = %193
  %205 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %210 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %209, i32 0, i32 1
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %218 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %219 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %218, i32 0, i32 1
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = call i32* @svn_checksum_mismatch_err(i64 %208, i32 %213, i32 %216, i32* %217, i64 %222)
  %224 = call i32* @svn_error_createf(i32 %205, i32* %223, i32* null)
  store i32* %224, i32** %3, align 8
  br label %246

225:                                              ; preds = %193, %188
  br label %226

226:                                              ; preds = %225, %62
  br label %227

227:                                              ; preds = %226, %16
  br label %244

228:                                              ; preds = %2
  %229 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %230 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %229, i32 0, i32 1
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp sgt i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %228
  %236 = load i32, i32* @SVN_ERR_FS_REP_CHANGED, align 4
  %237 = call i32* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %238 = call i32* @svn_error_create(i32 %236, i32* null, i32* %237)
  store i32* %238, i32** %3, align 8
  br label %246

239:                                              ; preds = %228
  %240 = load %struct.read_rep_args*, %struct.read_rep_args** %6, align 8
  %241 = getelementptr inbounds %struct.read_rep_args, %struct.read_rep_args* %240, i32 0, i32 0
  %242 = load i64*, i64** %241, align 8
  store i64 0, i64* %242, align 8
  br label %243

243:                                              ; preds = %239
  br label %244

244:                                              ; preds = %243, %227
  %245 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %245, i32** %3, align 8
  br label %246

246:                                              ; preds = %244, %235, %204, %167
  %247 = load i32*, i32** %3, align 8
  ret i32* %247
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @rep_read_range(i32, i64, i64, i32, i64*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @svn_checksum_update(i32, i32, i64) #1

declare dso_local i32 @svn_checksum_final(i32*, i32, i32) #1

declare dso_local i32 @svn_fs_bdb__read_rep(%struct.TYPE_10__**, i32, i64, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @svn_checksum_match(i64, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32* @svn_checksum_mismatch_err(i64, i32, i32, i32*, i64) #1

declare dso_local i32* @_(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
