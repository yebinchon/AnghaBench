; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.puffs_usermount = type { i32 }
%struct.puffs_pathobj = type { i8*, i32 }
%struct.puffs_ops = type { i32 }
%struct.timespec = type { i32, i64 }

@PUFFS_KFLAG_IAONDEMAND = common dso_local global i32 0, align 4
@FSNAME = common dso_local global i8* null, align 8
@MAXREQMAGIC = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@gdtm = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"bc:dfilm:n:o:p:r:st\00", align 1
@PUFFS_FLAG_BUILDPATH = common dso_local global i32 0, align 4
@optarg = external dso_local global i8*, align 8
@dynamicfh = common dso_local global i32 0, align 4
@PUFFS_KFLAG_LOOKUP_FULLPNBUF = common dso_local global i32 0, align 4
@straightflush = common dso_local global i32 0, align 4
@puffsmopts = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"getmntopts\00", align 1
@PUFFS_KFLAG_WTCACHE = common dso_local global i32 0, align 4
@PUFFS_FLAG_OPDUMP = common dso_local global i32 0, align 4
@optind = external dso_local global i32, align 4
@dtfs = common dso_local global i32 0, align 4
@fs = common dso_local global i32 0, align 4
@statvfs = common dso_local global i32 0, align 4
@unmount = common dso_local global i32 0, align 4
@sync = common dso_local global i32 0, align 4
@fhtonode = common dso_local global i32 0, align 4
@nodetofh = common dso_local global i32 0, align 4
@node = common dso_local global i32 0, align 4
@lookup = common dso_local global i32 0, align 4
@access = common dso_local global i32 0, align 4
@puffs_genfs = common dso_local global i32 0, align 4
@getattr = common dso_local global i32 0, align 4
@setattr = common dso_local global i32 0, align 4
@create = common dso_local global i32 0, align 4
@remove = common dso_local global i32 0, align 4
@readdir = common dso_local global i32 0, align 4
@poll = common dso_local global i32 0, align 4
@mmap = common dso_local global i32 0, align 4
@mkdir = common dso_local global i32 0, align 4
@rmdir = common dso_local global i32 0, align 4
@rename = common dso_local global i32 0, align 4
@read = common dso_local global i32 0, align 4
@write = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@symlink = common dso_local global i32 0, align 4
@readlink = common dso_local global i32 0, align 4
@mknod = common dso_local global i32 0, align 4
@inactive = common dso_local global i32 0, align 4
@pathconf = common dso_local global i32 0, align 4
@reclaim = common dso_local global i32 0, align 4
@_PATH_PUFFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@gpu = common dso_local global %struct.puffs_usermount* null, align 8
@PUFFS_FHFLAG_NFSV2 = common dso_local global i32 0, align 4
@PUFFS_FHFLAG_NFSV3 = common dso_local global i32 0, align 4
@PUFFS_FHFLAG_DYNAMIC = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@wipe_the_sleep_out_of_my_eyes = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"cannot set alarm sighandler\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"dtfs_domount failed\00", align 1
@loopfun = common dso_local global i32 0, align 4
@puffs_kernerr_abort = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"puffs_daemon\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"mount\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"mainloop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.puffs_usermount*, align 8
  %7 = alloca %struct.puffs_pathobj*, align 8
  %8 = alloca %struct.puffs_ops*, align 8
  %9 = alloca %struct.timespec, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @setprogname(i8* %21)
  store i8* null, i8** %11, align 8
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 256, i32* %17, align 4
  %23 = load i32, i32* @PUFFS_KFLAG_IAONDEMAND, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i8*, i8** @FSNAME, align 8
  store i8* %24, i8** %10, align 8
  %25 = load i32, i32* @MAXREQMAGIC, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* @VM_PROT_ALL, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gdtm, i32 0, i32 0), align 4
  br label %27

27:                                               ; preds = %91, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = call i32 @getopt(i32 %28, i8** %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %16, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %92

32:                                               ; preds = %27
  %33 = load i32, i32* %16, align 4
  switch i32 %33, label %89 [
    i32 98, label %34
    i32 99, label %38
    i32 100, label %42
    i32 102, label %43
    i32 105, label %47
    i32 108, label %52
    i32 109, label %53
    i32 110, label %57
    i32 111, label %59
    i32 112, label %70
    i32 114, label %82
    i32 115, label %84
    i32 116, label %85
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* @PUFFS_FLAG_BUILDPATH, align 4
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  br label %91

38:                                               ; preds = %32
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i8* @atoi(i8* %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %17, align 4
  br label %91

42:                                               ; preds = %32
  store i32 1, i32* @dynamicfh, align 4
  br label %91

43:                                               ; preds = %32
  %44 = load i32, i32* @PUFFS_KFLAG_LOOKUP_FULLPNBUF, align 4
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %13, align 4
  br label %91

47:                                               ; preds = %32
  %48 = load i32, i32* @PUFFS_KFLAG_IAONDEMAND, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %13, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %13, align 4
  br label %91

52:                                               ; preds = %32
  store i32 1, i32* @straightflush, align 4
  br label %91

53:                                               ; preds = %32
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i8* @atoi(i8* %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %18, align 4
  br label %91

57:                                               ; preds = %32
  %58 = load i8*, i8** @optarg, align 8
  store i8* %58, i8** %10, align 8
  br label %91

59:                                               ; preds = %32
  %60 = load i8*, i8** @optarg, align 8
  %61 = load i32, i32* @puffsmopts, align 4
  %62 = call i32* @getmntopts(i8* %60, i32 %61, i32* %15, i32* %13)
  store i32* %62, i32** %12, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %59
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @freemntopts(i32* %68)
  br label %91

70:                                               ; preds = %32
  %71 = load i8*, i8** @optarg, align 8
  %72 = call i8* @atoi(i8* %71)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gdtm, i32 0, i32 0), align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gdtm, i32 0, i32 0), align 4
  %75 = load i32, i32* @VM_PROT_ALL, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @VM_PROT_ALL, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = call i32 (...) @usage()
  br label %81

81:                                               ; preds = %79, %70
  br label %91

82:                                               ; preds = %32
  %83 = load i8*, i8** @optarg, align 8
  store i8* %83, i8** %11, align 8
  br label %91

84:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  br label %91

85:                                               ; preds = %32
  %86 = load i32, i32* @PUFFS_KFLAG_WTCACHE, align 4
  %87 = load i32, i32* %13, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %13, align 4
  br label %91

89:                                               ; preds = %32
  %90 = call i32 (...) @usage()
  br label %91

91:                                               ; preds = %89, %85, %84, %82, %81, %67, %57, %53, %52, %47, %43, %42, %38, %34
  br label %27

92:                                               ; preds = %27
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @PUFFS_FLAG_OPDUMP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %97, %92
  %99 = load i32, i32* @optind, align 4
  %100 = load i32, i32* %4, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* @optind, align 4
  %103 = load i8**, i8*** %5, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8*, i8** %103, i64 %104
  store i8** %105, i8*** %5, align 8
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 2
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = call i32 (...) @usage()
  br label %110

110:                                              ; preds = %108, %98
  %111 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %112 = call i32 @PUFFSOP_INIT(%struct.puffs_ops* %111)
  %113 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %114 = load i32, i32* @dtfs, align 4
  %115 = load i32, i32* @fs, align 4
  %116 = load i32, i32* @statvfs, align 4
  %117 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %113, i32 %114, i32 %115, i32 %116)
  %118 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %119 = load i32, i32* @dtfs, align 4
  %120 = load i32, i32* @fs, align 4
  %121 = load i32, i32* @unmount, align 4
  %122 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %118, i32 %119, i32 %120, i32 %121)
  %123 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %124 = load i32, i32* @sync, align 4
  %125 = call i32 @PUFFSOP_SETFSNOP(%struct.puffs_ops* %123, i32 %124)
  %126 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %127 = load i32, i32* @dtfs, align 4
  %128 = load i32, i32* @fs, align 4
  %129 = load i32, i32* @fhtonode, align 4
  %130 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %126, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %132 = load i32, i32* @dtfs, align 4
  %133 = load i32, i32* @fs, align 4
  %134 = load i32, i32* @nodetofh, align 4
  %135 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %131, i32 %132, i32 %133, i32 %134)
  %136 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %137 = load i32, i32* @dtfs, align 4
  %138 = load i32, i32* @node, align 4
  %139 = load i32, i32* @lookup, align 4
  %140 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %136, i32 %137, i32 %138, i32 %139)
  %141 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %142 = load i32, i32* @dtfs, align 4
  %143 = load i32, i32* @node, align 4
  %144 = load i32, i32* @access, align 4
  %145 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %141, i32 %142, i32 %143, i32 %144)
  %146 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %147 = load i32, i32* @puffs_genfs, align 4
  %148 = load i32, i32* @node, align 4
  %149 = load i32, i32* @getattr, align 4
  %150 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %146, i32 %147, i32 %148, i32 %149)
  %151 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %152 = load i32, i32* @dtfs, align 4
  %153 = load i32, i32* @node, align 4
  %154 = load i32, i32* @setattr, align 4
  %155 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %151, i32 %152, i32 %153, i32 %154)
  %156 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %157 = load i32, i32* @dtfs, align 4
  %158 = load i32, i32* @node, align 4
  %159 = load i32, i32* @create, align 4
  %160 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %156, i32 %157, i32 %158, i32 %159)
  %161 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %162 = load i32, i32* @dtfs, align 4
  %163 = load i32, i32* @node, align 4
  %164 = load i32, i32* @remove, align 4
  %165 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %161, i32 %162, i32 %163, i32 %164)
  %166 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %167 = load i32, i32* @dtfs, align 4
  %168 = load i32, i32* @node, align 4
  %169 = load i32, i32* @readdir, align 4
  %170 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %166, i32 %167, i32 %168, i32 %169)
  %171 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %172 = load i32, i32* @dtfs, align 4
  %173 = load i32, i32* @node, align 4
  %174 = load i32, i32* @poll, align 4
  %175 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %171, i32 %172, i32 %173, i32 %174)
  %176 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %177 = load i32, i32* @dtfs, align 4
  %178 = load i32, i32* @node, align 4
  %179 = load i32, i32* @mmap, align 4
  %180 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %176, i32 %177, i32 %178, i32 %179)
  %181 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %182 = load i32, i32* @dtfs, align 4
  %183 = load i32, i32* @node, align 4
  %184 = load i32, i32* @mkdir, align 4
  %185 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %181, i32 %182, i32 %183, i32 %184)
  %186 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %187 = load i32, i32* @dtfs, align 4
  %188 = load i32, i32* @node, align 4
  %189 = load i32, i32* @rmdir, align 4
  %190 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %186, i32 %187, i32 %188, i32 %189)
  %191 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %192 = load i32, i32* @dtfs, align 4
  %193 = load i32, i32* @node, align 4
  %194 = load i32, i32* @rename, align 4
  %195 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %191, i32 %192, i32 %193, i32 %194)
  %196 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %197 = load i32, i32* @dtfs, align 4
  %198 = load i32, i32* @node, align 4
  %199 = load i32, i32* @read, align 4
  %200 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %196, i32 %197, i32 %198, i32 %199)
  %201 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %202 = load i32, i32* @dtfs, align 4
  %203 = load i32, i32* @node, align 4
  %204 = load i32, i32* @write, align 4
  %205 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %201, i32 %202, i32 %203, i32 %204)
  %206 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %207 = load i32, i32* @dtfs, align 4
  %208 = load i32, i32* @node, align 4
  %209 = load i32, i32* @link, align 4
  %210 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %206, i32 %207, i32 %208, i32 %209)
  %211 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %212 = load i32, i32* @dtfs, align 4
  %213 = load i32, i32* @node, align 4
  %214 = load i32, i32* @symlink, align 4
  %215 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %211, i32 %212, i32 %213, i32 %214)
  %216 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %217 = load i32, i32* @dtfs, align 4
  %218 = load i32, i32* @node, align 4
  %219 = load i32, i32* @readlink, align 4
  %220 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %216, i32 %217, i32 %218, i32 %219)
  %221 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %222 = load i32, i32* @dtfs, align 4
  %223 = load i32, i32* @node, align 4
  %224 = load i32, i32* @mknod, align 4
  %225 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %221, i32 %222, i32 %223, i32 %224)
  %226 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %227 = load i32, i32* @dtfs, align 4
  %228 = load i32, i32* @node, align 4
  %229 = load i32, i32* @inactive, align 4
  %230 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %226, i32 %227, i32 %228, i32 %229)
  %231 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %232 = load i32, i32* @dtfs, align 4
  %233 = load i32, i32* @node, align 4
  %234 = load i32, i32* @pathconf, align 4
  %235 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %231, i32 %232, i32 %233, i32 %234)
  %236 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %237 = load i32, i32* @dtfs, align 4
  %238 = load i32, i32* @node, align 4
  %239 = load i32, i32* @reclaim, align 4
  %240 = call i32 @PUFFSOP_SET(%struct.puffs_ops* %236, i32 %237, i32 %238, i32 %239)
  %241 = call i32 @time(i32* null)
  %242 = call i32 @srandom(i32 %241)
  %243 = load %struct.puffs_ops*, %struct.puffs_ops** %8, align 8
  %244 = load i32, i32* @_PATH_PUFFS, align 4
  %245 = load i8*, i8** %10, align 8
  %246 = load i32, i32* %13, align 4
  %247 = call %struct.puffs_usermount* @puffs_init(%struct.puffs_ops* %243, i32 %244, i8* %245, %struct.TYPE_3__* @gdtm, i32 %246)
  store %struct.puffs_usermount* %247, %struct.puffs_usermount** %6, align 8
  %248 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %249 = icmp eq %struct.puffs_usermount* %248, null
  br i1 %249, label %250, label %252

250:                                              ; preds = %110
  %251 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %252

252:                                              ; preds = %250, %110
  %253 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  store %struct.puffs_usermount* %253, %struct.puffs_usermount** @gpu, align 8
  %254 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %255 = load i32, i32* @PUFFS_FHFLAG_NFSV2, align 4
  %256 = load i32, i32* @PUFFS_FHFLAG_NFSV3, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @dynamicfh, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %252
  %261 = load i32, i32* @PUFFS_FHFLAG_DYNAMIC, align 4
  br label %263

262:                                              ; preds = %252
  br label %263

263:                                              ; preds = %262, %260
  %264 = phi i32 [ %261, %260 ], [ 0, %262 ]
  %265 = or i32 %257, %264
  %266 = call i32 @puffs_setfhsize(%struct.puffs_usermount* %254, i32 4, i32 %265)
  %267 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %268 = load i32, i32* %17, align 4
  %269 = call i32 @puffs_setncookiehash(%struct.puffs_usermount* %267, i32 %268)
  %270 = load i32, i32* @SIGALRM, align 4
  %271 = load i32, i32* @wipe_the_sleep_out_of_my_eyes, align 4
  %272 = call i64 @signal(i32 %270, i32 %271)
  %273 = load i64, i64* @SIG_ERR, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %263
  %276 = call i32 @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %277

277:                                              ; preds = %275, %263
  %278 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %279 = load i8*, i8** %11, align 8
  %280 = call i64 @dtfs_domount(%struct.puffs_usermount* %278, i8* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  %283 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %284

284:                                              ; preds = %282, %277
  %285 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %286 = call %struct.puffs_pathobj* @puffs_getrootpathobj(%struct.puffs_usermount* %285)
  store %struct.puffs_pathobj* %286, %struct.puffs_pathobj** %7, align 8
  %287 = load i8**, i8*** %5, align 8
  %288 = getelementptr inbounds i8*, i8** %287, i64 0
  %289 = load i8*, i8** %288, align 8
  %290 = load %struct.puffs_pathobj*, %struct.puffs_pathobj** %7, align 8
  %291 = getelementptr inbounds %struct.puffs_pathobj, %struct.puffs_pathobj* %290, i32 0, i32 0
  store i8* %289, i8** %291, align 8
  %292 = load i8**, i8*** %5, align 8
  %293 = getelementptr inbounds i8*, i8** %292, i64 0
  %294 = load i8*, i8** %293, align 8
  %295 = call i32 @strlen(i8* %294)
  %296 = load %struct.puffs_pathobj*, %struct.puffs_pathobj** %7, align 8
  %297 = getelementptr inbounds %struct.puffs_pathobj, %struct.puffs_pathobj* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 8
  %298 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  store i32 1, i32* %298, align 8
  %299 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  store i64 0, i64* %299, align 8
  %300 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %301 = load i32, i32* @loopfun, align 4
  %302 = call i32 @puffs_ml_setloopfn(%struct.puffs_usermount* %300, i32 %301)
  %303 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %304 = call i32 @puffs_ml_settimeout(%struct.puffs_usermount* %303, %struct.timespec* %9)
  %305 = load i32, i32* %18, align 4
  %306 = load i32, i32* @MAXREQMAGIC, align 4
  %307 = icmp ne i32 %305, %306
  br i1 %307, label %308, label %312

308:                                              ; preds = %284
  %309 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %310 = load i32, i32* %18, align 4
  %311 = call i32 @puffs_setmaxreqlen(%struct.puffs_usermount* %309, i32 %310)
  br label %312

312:                                              ; preds = %308, %284
  %313 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %314 = load i32, i32* @puffs_kernerr_abort, align 4
  %315 = call i32 @puffs_set_errnotify(%struct.puffs_usermount* %313, i32 %314)
  %316 = load i32, i32* %14, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %312
  %319 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %320 = call i32 @puffs_daemon(%struct.puffs_usermount* %319, i32 1, i32 1)
  %321 = icmp eq i32 %320, -1
  br i1 %321, label %322, label %324

322:                                              ; preds = %318
  %323 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %324

324:                                              ; preds = %322, %318
  br label %325

325:                                              ; preds = %324, %312
  %326 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %327 = load i8**, i8*** %5, align 8
  %328 = getelementptr inbounds i8*, i8** %327, i64 1
  %329 = load i8*, i8** %328, align 8
  %330 = load i32, i32* %15, align 4
  %331 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %332 = call i32 @puffs_getroot(%struct.puffs_usermount* %331)
  %333 = call i32 @puffs_mount(%struct.puffs_usermount* %326, i8* %329, i32 %330, i32 %332)
  %334 = icmp eq i32 %333, -1
  br i1 %334, label %335, label %337

335:                                              ; preds = %325
  %336 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %337

337:                                              ; preds = %335, %325
  %338 = load %struct.puffs_usermount*, %struct.puffs_usermount** %6, align 8
  %339 = call i32 @puffs_mainloop(%struct.puffs_usermount* %338)
  %340 = icmp eq i32 %339, -1
  br i1 %340, label %341, label %343

341:                                              ; preds = %337
  %342 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %343

343:                                              ; preds = %341, %337
  ret i32 0
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32* @getmntopts(i8*, i32, i32*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @freemntopts(i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @PUFFSOP_INIT(%struct.puffs_ops*) #1

declare dso_local i32 @PUFFSOP_SET(%struct.puffs_ops*, i32, i32, i32) #1

declare dso_local i32 @PUFFSOP_SETFSNOP(%struct.puffs_ops*, i32) #1

declare dso_local i32 @srandom(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.puffs_usermount* @puffs_init(%struct.puffs_ops*, i32, i8*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @puffs_setfhsize(%struct.puffs_usermount*, i32, i32) #1

declare dso_local i32 @puffs_setncookiehash(%struct.puffs_usermount*, i32) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @dtfs_domount(%struct.puffs_usermount*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local %struct.puffs_pathobj* @puffs_getrootpathobj(%struct.puffs_usermount*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @puffs_ml_setloopfn(%struct.puffs_usermount*, i32) #1

declare dso_local i32 @puffs_ml_settimeout(%struct.puffs_usermount*, %struct.timespec*) #1

declare dso_local i32 @puffs_setmaxreqlen(%struct.puffs_usermount*, i32) #1

declare dso_local i32 @puffs_set_errnotify(%struct.puffs_usermount*, i32) #1

declare dso_local i32 @puffs_daemon(%struct.puffs_usermount*, i32, i32) #1

declare dso_local i32 @puffs_mount(%struct.puffs_usermount*, i8*, i32, i32) #1

declare dso_local i32 @puffs_getroot(%struct.puffs_usermount*) #1

declare dso_local i32 @puffs_mainloop(%struct.puffs_usermount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
