; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_lun = type { i8*, i64, %struct.TYPE_3__*, %struct.ctl_be_lun }
%struct.TYPE_3__ = type { i64 }
%struct.ctl_be_lun = type { i64, i8*, i32, i32 }
%struct.ctl_lun_req = type { i32 }
%struct.nameidata = type { %struct.TYPE_3__* }

@rootvnode = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Root filesystem is not mounted\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"no file argument specified\00", align 1
@M_CTLBLK = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@FWRITE = common dso_local global i32 0, align 4
@T_DIRECT = common dso_local global i64 0, align 8
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"error opening %s: %d\00", align 1
@CTL_LUN_FLAG_READONLY = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"%s is not a disk or plain file\00", align 1
@CTL_LUN_SERSEQ_OFF = common dso_local global i8* null, align 8
@ctl_be_block_dispatch_dev = common dso_local global i64 0, align 8
@CTL_LUN_SERSEQ_READ = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"serseq\00", align 1
@CTL_LUN_SERSEQ_ON = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_be_block_lun*, %struct.ctl_lun_req*)* @ctl_be_block_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_be_block_open(%struct.ctl_be_block_lun* %0, %struct.ctl_lun_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctl_be_block_lun*, align 8
  %5 = alloca %struct.ctl_lun_req*, align 8
  %6 = alloca %struct.ctl_be_lun*, align 8
  %7 = alloca %struct.nameidata, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.ctl_be_block_lun* %0, %struct.ctl_be_block_lun** %4, align 8
  store %struct.ctl_lun_req* %1, %struct.ctl_lun_req** %5, align 8
  %12 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %13 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %12, i32 0, i32 3
  store %struct.ctl_be_lun* %13, %struct.ctl_be_lun** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32*, i32** @rootvnode, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %18 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %19, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %254

21:                                               ; preds = %2
  %22 = call i32 (...) @pwd_ensure_dirs()
  %23 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %24 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @dnvlist_get_string(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %31 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %32, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %254

34:                                               ; preds = %21
  %35 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %36 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* @M_CTLBLK, align 4
  %39 = call i32 @free(i8* %37, i32 %38)
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @M_CTLBLK, align 4
  %42 = call i8* @strdup(i8* %40, i32 %41)
  %43 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %44 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @FREAD, align 4
  store i32 %45, i32* %10, align 4
  %46 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %47 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @dnvlist_get_string(i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %34
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @FWRITE, align 4
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %56, %52
  br label %72

61:                                               ; preds = %34
  %62 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %63 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @T_DIRECT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @FWRITE, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %67, %61
  br label %72

72:                                               ; preds = %71, %60
  br label %73

73:                                               ; preds = %111, %95, %72
  %74 = load i32, i32* @LOOKUP, align 4
  %75 = load i32, i32* @FOLLOW, align 4
  %76 = load i32, i32* @UIO_SYSSPACE, align 4
  %77 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %78 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* @curthread, align 4
  %81 = call i32 @NDINIT(%struct.nameidata* %7, i32 %74, i32 %75, i32 %76, i8* %79, i32 %80)
  %82 = call i32 @vn_open(%struct.nameidata* %7, i32* %10, i32 0, i32* null)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @EROFS, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %73
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @EACCES, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86, %73
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @FWRITE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32, i32* @FWRITE, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %10, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %73

100:                                              ; preds = %90, %86
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %135

103:                                              ; preds = %100
  %104 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %105 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 47
  br i1 %110, label %111, label %125

111:                                              ; preds = %103
  %112 = load i32, i32* @M_CTLBLK, align 4
  %113 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %114 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @asprintf(i8** %11, i32 %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %115)
  %117 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %118 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* @M_CTLBLK, align 4
  %121 = call i32 @free(i8* %119, i32 %120)
  %122 = load i8*, i8** %11, align 8
  %123 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %124 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  br label %73

125:                                              ; preds = %103
  %126 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %127 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %130 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %128, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %131, i32 %132)
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %3, align 4
  br label %254

135:                                              ; preds = %100
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @FWRITE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i32, i32* @CTL_LUN_FLAG_READONLY, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %144 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %153

147:                                              ; preds = %135
  %148 = load i32, i32* @CTL_LUN_FLAG_READONLY, align 4
  %149 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %150 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %147, %140
  %154 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %155 = call i32 @NDFREE(%struct.nameidata* %7, i32 %154)
  %156 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 0
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %159 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %158, i32 0, i32 2
  store %struct.TYPE_3__* %157, %struct.TYPE_3__** %159, align 8
  %160 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %161 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %160, i32 0, i32 2
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = call i64 @vn_isdisk(%struct.TYPE_3__* %162, i32* %9)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %153
  %166 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %167 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %168 = call i32 @ctl_be_block_open_dev(%struct.ctl_be_block_lun* %166, %struct.ctl_lun_req* %167)
  store i32 %168, i32* %9, align 4
  br label %191

169:                                              ; preds = %153
  %170 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %171 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %170, i32 0, i32 2
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @VREG, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %169
  %178 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %179 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %180 = call i32 @ctl_be_block_open_file(%struct.ctl_be_block_lun* %178, %struct.ctl_lun_req* %179)
  store i32 %180, i32* %9, align 4
  br label %190

181:                                              ; preds = %169
  %182 = load i32, i32* @EINVAL, align 4
  store i32 %182, i32* %9, align 4
  %183 = load %struct.ctl_lun_req*, %struct.ctl_lun_req** %5, align 8
  %184 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %187 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %185, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %188)
  br label %190

190:                                              ; preds = %181, %177
  br label %191

191:                                              ; preds = %190, %165
  %192 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %193 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %192, i32 0, i32 2
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %193, align 8
  %195 = call i32 @VOP_UNLOCK(%struct.TYPE_3__* %194, i32 0)
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %191
  %199 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %200 = call i32 @ctl_be_block_close(%struct.ctl_be_block_lun* %199)
  br label %201

201:                                              ; preds = %198, %191
  %202 = load i8*, i8** @CTL_LUN_SERSEQ_OFF, align 8
  %203 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %204 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %203, i32 0, i32 1
  store i8* %202, i8** %204, align 8
  %205 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %206 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @ctl_be_block_dispatch_dev, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %201
  %211 = load i8*, i8** @CTL_LUN_SERSEQ_READ, align 8
  %212 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %213 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %212, i32 0, i32 1
  store i8* %211, i8** %213, align 8
  br label %214

214:                                              ; preds = %210, %201
  %215 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %216 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i8* @dnvlist_get_string(i32 %217, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32* null)
  store i8* %218, i8** %8, align 8
  %219 = load i8*, i8** %8, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %229

221:                                              ; preds = %214
  %222 = load i8*, i8** %8, align 8
  %223 = call i64 @strcmp(i8* %222, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load i8*, i8** @CTL_LUN_SERSEQ_ON, align 8
  %227 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %228 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %227, i32 0, i32 1
  store i8* %226, i8** %228, align 8
  br label %253

229:                                              ; preds = %221, %214
  %230 = load i8*, i8** %8, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %240

232:                                              ; preds = %229
  %233 = load i8*, i8** %8, align 8
  %234 = call i64 @strcmp(i8* %233, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %232
  %237 = load i8*, i8** @CTL_LUN_SERSEQ_READ, align 8
  %238 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %239 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %238, i32 0, i32 1
  store i8* %237, i8** %239, align 8
  br label %252

240:                                              ; preds = %232, %229
  %241 = load i8*, i8** %8, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %251

243:                                              ; preds = %240
  %244 = load i8*, i8** %8, align 8
  %245 = call i64 @strcmp(i8* %244, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = load i8*, i8** @CTL_LUN_SERSEQ_OFF, align 8
  %249 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %6, align 8
  %250 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %249, i32 0, i32 1
  store i8* %248, i8** %250, align 8
  br label %251

251:                                              ; preds = %247, %243, %240
  br label %252

252:                                              ; preds = %251, %236
  br label %253

253:                                              ; preds = %252, %225
  store i32 0, i32* %3, align 4
  br label %254

254:                                              ; preds = %253, %125, %29, %16
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @pwd_ensure_dirs(...) #1

declare dso_local i8* @dnvlist_get_string(i32, i8*, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i8* @strdup(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @vn_open(%struct.nameidata*, i32*, i32, i32*) #1

declare dso_local i32 @asprintf(i8**, i32, i8*, i8*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i64 @vn_isdisk(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @ctl_be_block_open_dev(%struct.ctl_be_block_lun*, %struct.ctl_lun_req*) #1

declare dso_local i32 @ctl_be_block_open_file(%struct.ctl_be_block_lun*, %struct.ctl_lun_req*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ctl_be_block_close(%struct.ctl_be_block_lun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
