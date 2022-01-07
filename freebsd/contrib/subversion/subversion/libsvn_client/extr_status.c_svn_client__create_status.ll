; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_status.c_svn_client__create_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_status.c_svn_client__create_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i32, i32, i8*, i8*, i8*, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32 }

@svn_node_dir = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_wc_status_conflicted = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__create_status(%struct.TYPE_7__** %0, i32* %1, i8* %2, %struct.TYPE_6__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call %struct.TYPE_7__* @apr_pcalloc(i32* %16, i32 176)
  %18 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i8* %25, i8** %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 30
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 32
  store i32 %31, i32* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 31
  store i64 %37, i64* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 30
  store i64 %43, i64* %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 29
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 4
  store i8* %49, i8** %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 28
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 6
  store i8* %55, i8** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 27
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 5
  store i8* %61, i8** %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @svn_node_dir, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %6
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 26
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 29
  store i32 %73, i32* %76, align 8
  br label %77

77:                                               ; preds = %70, %6
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 25
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 28
  store i32 %80, i32* %83, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 24
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 27
  store i32 %86, i32* %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 23
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 26
  store i32 %92, i32* %95, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 22
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 25
  store i32 %98, i32* %101, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 21
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 24
  store i32 %104, i32* %107, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 20
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 23
  store i32 %110, i32* %113, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 19
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 22
  store i32 %116, i32* %119, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 18
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 21
  store i32 %122, i32* %125, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 17
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 19
  store i32 %128, i32* %131, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 16
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 20
  store i64 %134, i64* %137, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 16
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %77
  %143 = load i32, i32* @FALSE, align 4
  %144 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 19
  store i32 %143, i32* %146, align 4
  br label %147

147:                                              ; preds = %142, %77
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 15
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 18
  store i32 %150, i32* %153, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 14
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 17
  store i32 %156, i32* %159, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 13
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 16
  store i32 %162, i32* %165, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 12
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 15
  store i32 %168, i32* %171, align 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 11
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 14
  store i32 %174, i32* %177, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 10
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 13
  store i32 %180, i32* %183, align 4
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 9
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 12
  store i32 %186, i32* %189, align 8
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 11
  store i32 %192, i32* %195, align 4
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 10
  store i32 %198, i32* %201, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 9
  store i32 %204, i32* %207, align 4
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 8
  store i32 %210, i32* %213, align 8
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %215 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 7
  store %struct.TYPE_6__* %214, %struct.TYPE_6__** %217, align 8
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %260

222:                                              ; preds = %147
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %260

227:                                              ; preds = %222
  %228 = load i32*, i32** %8, align 8
  %229 = load i8*, i8** %9, align 8
  %230 = load i32*, i32** %12, align 8
  %231 = call i32 @svn_wc_conflicted_p3(i64* %13, i64* %14, i64* %15, i32* %228, i8* %229, i32* %230)
  %232 = call i32 @SVN_ERR(i32 %231)
  %233 = load i64, i64* %13, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %227
  %236 = load i8*, i8** @svn_wc_status_conflicted, align 8
  %237 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 6
  store i8* %236, i8** %239, align 8
  br label %240

240:                                              ; preds = %235, %227
  %241 = load i64, i64* %14, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %240
  %244 = load i8*, i8** @svn_wc_status_conflicted, align 8
  %245 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 5
  store i8* %244, i8** %247, align 8
  br label %248

248:                                              ; preds = %243, %240
  %249 = load i64, i64* %13, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %248
  %252 = load i64, i64* %14, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %251, %248
  %255 = load i8*, i8** @svn_wc_status_conflicted, align 8
  %256 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 4
  store i8* %255, i8** %258, align 8
  br label %259

259:                                              ; preds = %254, %251
  br label %260

260:                                              ; preds = %259, %222, %147
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 3
  store i32 %263, i32* %266, align 4
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 2
  store i32 %269, i32* %272, align 8
  %273 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %273
}

declare dso_local %struct.TYPE_7__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_conflicted_p3(i64*, i64*, i64*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
