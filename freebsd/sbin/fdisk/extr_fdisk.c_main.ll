; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.dos_partition*, i32* }
%struct.dos_partition = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"BIab:f:ipqstuv1234\00", align 1
@B_flag = common dso_local global i32 0, align 4
@I_flag = common dso_local global i32 0, align 4
@a_flag = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@b_flag = common dso_local global i8* null, align 8
@f_flag = common dso_local global i8* null, align 8
@i_flag = common dso_local global i32 0, align 4
@print_config_flag = common dso_local global i32 0, align 4
@q_flag = common dso_local global i32 0, align 4
@s_flag = common dso_local global i32 0, align 4
@t_flag = common dso_local global i32 0, align 4
@u_flag = common dso_local global i32 0, align 4
@v_flag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@disk = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to get correct path for %s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"cannot open disk %s\00", align 1
@MAX_SEC_SIZE = common dso_local global i32 0, align 4
@mboot = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"cannot allocate buffer to determine disk sector size\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"could not detect sector size\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"read_s0\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"g c%d h%d s%d\0A\00", align 1
@dos_cyls = common dso_local global i32 0, align 4
@dos_heads = common dso_local global i32 0, align 4
@dos_sectors = common dso_local global i32 0, align 4
@NDOSPART = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"p %d 0x%02x %lu %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"a %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"%s: %d cyl %d hd %d sec\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Part  %11s %11s Type Flags\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"%4d: %11lu %11lu 0x%02x 0x%02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"******* Working on device %s *******\0A\00", align 1
@DOSPTYP_386BSD = common dso_local global i32 0, align 4
@ACTIVE = common dso_local global i32 0, align 4
@disksecs = common dso_local global i32 0, align 4
@dos_cylsecs = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [25 x i8] c"Media sector size is %d\0A\00", align 1
@secsize = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [53 x i8] c"Warning: BIOS sector numbering starts with sector 1\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Information from DOS bootblock is:\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"\0AWe haven't changed the partition table yet.  \00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"This is your last chance.\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Should we write new partition table?\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"\0A-t flag specified -- partition table not written.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dos_partition*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %8, align 4
  br label %10

10:                                               ; preds = %36, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %37

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %34 [
    i32 66, label %17
    i32 73, label %18
    i32 97, label %19
    i32 98, label %20
    i32 102, label %22
    i32 105, label %24
    i32 112, label %25
    i32 113, label %26
    i32 115, label %27
    i32 116, label %28
    i32 117, label %29
    i32 118, label %30
    i32 49, label %31
    i32 50, label %31
    i32 51, label %31
    i32 52, label %31
  ]

17:                                               ; preds = %15
  store i32 1, i32* @B_flag, align 4
  br label %36

18:                                               ; preds = %15
  store i32 1, i32* @I_flag, align 4
  br label %36

19:                                               ; preds = %15
  store i32 1, i32* @a_flag, align 4
  br label %36

20:                                               ; preds = %15
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** @b_flag, align 8
  br label %36

22:                                               ; preds = %15
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** @f_flag, align 8
  br label %36

24:                                               ; preds = %15
  store i32 1, i32* @i_flag, align 4
  br label %36

25:                                               ; preds = %15
  store i32 1, i32* @print_config_flag, align 4
  br label %36

26:                                               ; preds = %15
  store i32 1, i32* @q_flag, align 4
  br label %36

27:                                               ; preds = %15
  store i32 1, i32* @s_flag, align 4
  br label %36

28:                                               ; preds = %15
  store i32 1, i32* @t_flag, align 4
  br label %36

29:                                               ; preds = %15
  store i32 1, i32* @u_flag, align 4
  br label %36

30:                                               ; preds = %15
  store i32 1, i32* @v_flag, align 4
  br label %36

31:                                               ; preds = %15, %15, %15, %15
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 48
  store i32 %33, i32* %8, align 4
  br label %36

34:                                               ; preds = %15
  %35 = call i32 (...) @usage()
  br label %36

36:                                               ; preds = %34, %31, %30, %29, %28, %27, %26, %25, %24, %22, %20, %19, %18, %17
  br label %10

37:                                               ; preds = %10
  %38 = load i8*, i8** @f_flag, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @i_flag, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %37
  store i32 1, i32* @u_flag, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* @t_flag, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* @v_flag, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i64, i64* @optind, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  %54 = load i64, i64* @optind, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 %54
  store i8** %56, i8*** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = call i8* (...) @get_rootdisk()
  store i8* %60, i8** @disk, align 8
  br label %74

61:                                               ; preds = %48
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* @g_device_path(i8* %64)
  store i8* %65, i8** @disk, align 8
  %66 = load i8*, i8** @disk, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %68, %61
  br label %74

74:                                               ; preds = %73, %59
  %75 = load i32, i32* @u_flag, align 4
  %76 = call i64 @open_disk(i32 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i8*, i8** @disk, align 8
  %80 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i32, i32* @MAX_SEC_SIZE, align 4
  %83 = call i32* @malloc(i32 %82)
  store i32* %83, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 1), align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 1), align 8
  %89 = call i32 @read_disk(i32 0, i32* %88)
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %87
  %94 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 1), align 8
  %95 = call i32 @free(i32* %94)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 1), align 8
  %96 = load i32, i32* @print_config_flag, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %159

98:                                               ; preds = %93
  %99 = call i64 (...) @read_s0()
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %98
  %104 = load i8*, i8** @disk, align 8
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %104)
  %106 = load i32, i32* @dos_cyls, align 4
  %107 = load i32, i32* @dos_heads, align 4
  %108 = load i32, i32* @dos_sectors, align 4
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %106, i32 %107, i32 %108)
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %154, %103
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @NDOSPART, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %157

114:                                              ; preds = %110
  %115 = load %struct.dos_partition*, %struct.dos_partition** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 0), align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %115, i64 %117
  store %struct.dos_partition* %118, %struct.dos_partition** %9, align 8
  %119 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %120 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %114
  %124 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %125 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %154

129:                                              ; preds = %123, %114
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  %132 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %133 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %136 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %140 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %131, i32 %134, i32 %138, i32 %142)
  %144 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %145 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 128
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %129
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %149, %129
  br label %154

154:                                              ; preds = %153, %128
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %110

157:                                              ; preds = %110
  %158 = call i32 @exit(i32 0) #3
  unreachable

159:                                              ; preds = %93
  %160 = load i32, i32* @s_flag, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %216

162:                                              ; preds = %159
  %163 = call i64 (...) @read_s0()
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %162
  %168 = load i8*, i8** @disk, align 8
  %169 = load i32, i32* @dos_cyls, align 4
  %170 = load i32, i32* @dos_heads, align 4
  %171 = load i32, i32* @dos_sectors, align 4
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %168, i32 %169, i32 %170, i32 %171)
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %174

174:                                              ; preds = %211, %167
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @NDOSPART, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %214

178:                                              ; preds = %174
  %179 = load %struct.dos_partition*, %struct.dos_partition** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 0), align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %179, i64 %181
  store %struct.dos_partition* %182, %struct.dos_partition** %9, align 8
  %183 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %184 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %178
  %188 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %189 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %211

193:                                              ; preds = %187, %178
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 1
  %196 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %197 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i32
  %200 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %201 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %205 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %208 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %195, i32 %199, i32 %203, i32 %206, i32 %209)
  br label %211

211:                                              ; preds = %193, %192
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %174

214:                                              ; preds = %174
  %215 = call i32 @exit(i32 0) #3
  unreachable

216:                                              ; preds = %159
  %217 = load i8*, i8** @disk, align 8
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i8* %217)
  %219 = load i32, i32* @I_flag, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %257

221:                                              ; preds = %216
  %222 = call i64 (...) @read_s0()
  %223 = call i32 (...) @reset_boot()
  %224 = load %struct.dos_partition*, %struct.dos_partition** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 0), align 8
  %225 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %224, i64 0
  store %struct.dos_partition* %225, %struct.dos_partition** %9, align 8
  %226 = load i32, i32* @DOSPTYP_386BSD, align 4
  %227 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %228 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 8
  %229 = load i32, i32* @ACTIVE, align 4
  %230 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %231 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %230, i32 0, i32 3
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* @dos_sectors, align 4
  %233 = sext i32 %232 to i64
  %234 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %235 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  %236 = load i32, i32* @disksecs, align 4
  %237 = load i32, i32* @dos_cylsecs, align 4
  %238 = call i32 @rounddown(i32 %236, i32 %237)
  %239 = load i32, i32* @dos_sectors, align 4
  %240 = sub nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %243 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %242, i32 0, i32 1
  store i64 %241, i64* %243, align 8
  %244 = load %struct.dos_partition*, %struct.dos_partition** %9, align 8
  %245 = call i32 @dos(%struct.dos_partition* %244)
  %246 = load i32, i32* @v_flag, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %221
  %249 = call i32 (...) @print_s0()
  br label %250

250:                                              ; preds = %248, %221
  %251 = load i32, i32* @t_flag, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %255, label %253

253:                                              ; preds = %250
  %254 = call i32 (...) @write_s0()
  br label %255

255:                                              ; preds = %253, %250
  %256 = call i32 @exit(i32 0) #3
  unreachable

257:                                              ; preds = %216
  %258 = load i8*, i8** @f_flag, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %285

260:                                              ; preds = %257
  %261 = call i64 (...) @read_s0()
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %260
  %264 = load i32, i32* @i_flag, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %263, %260
  %267 = call i32 (...) @reset_boot()
  br label %268

268:                                              ; preds = %266, %263
  %269 = load i8*, i8** @f_flag, align 8
  %270 = call i32 @read_config(i8* %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %268
  %273 = call i32 @exit(i32 1) #3
  unreachable

274:                                              ; preds = %268
  %275 = load i32, i32* @v_flag, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = call i32 (...) @print_s0()
  br label %279

279:                                              ; preds = %277, %274
  %280 = load i32, i32* @t_flag, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %279
  %283 = call i32 (...) @write_s0()
  br label %284

284:                                              ; preds = %282, %279
  br label %363

285:                                              ; preds = %257
  %286 = load i32, i32* @u_flag, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %285
  %289 = call i32 (...) @get_params_to_use()
  br label %292

290:                                              ; preds = %285
  %291 = call i32 (...) @print_params()
  br label %292

292:                                              ; preds = %290, %288
  %293 = call i64 (...) @read_s0()
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %292
  %296 = load i32, i32* @dos_sectors, align 4
  %297 = call i32 @init_sector0(i32 %296)
  br label %298

298:                                              ; preds = %295, %292
  %299 = load i32, i32* @secsize, align 4
  %300 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %299)
  %301 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0))
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  %303 = load i32, i32* %8, align 4
  %304 = icmp eq i32 %303, -1
  br i1 %304, label %305, label %317

305:                                              ; preds = %298
  store i32 1, i32* %7, align 4
  br label %306

306:                                              ; preds = %313, %305
  %307 = load i32, i32* %7, align 4
  %308 = load i32, i32* @NDOSPART, align 4
  %309 = icmp sle i32 %307, %308
  br i1 %309, label %310, label %316

310:                                              ; preds = %306
  %311 = load i32, i32* %7, align 4
  %312 = call i32 @change_part(i32 %311)
  br label %313

313:                                              ; preds = %310
  %314 = load i32, i32* %7, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %7, align 4
  br label %306

316:                                              ; preds = %306
  br label %320

317:                                              ; preds = %298
  %318 = load i32, i32* %8, align 4
  %319 = call i32 @change_part(i32 %318)
  br label %320

320:                                              ; preds = %317, %316
  %321 = load i32, i32* @u_flag, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %326, label %323

323:                                              ; preds = %320
  %324 = load i32, i32* @a_flag, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %323, %320
  %327 = load i32, i32* %8, align 4
  %328 = call i32 @change_active(i32 %327)
  br label %329

329:                                              ; preds = %326, %323
  %330 = load i32, i32* @B_flag, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %329
  %333 = call i32 (...) @change_code()
  br label %334

334:                                              ; preds = %332, %329
  %335 = load i32, i32* @u_flag, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %343, label %337

337:                                              ; preds = %334
  %338 = load i32, i32* @a_flag, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %343, label %340

340:                                              ; preds = %337
  %341 = load i32, i32* @B_flag, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %362

343:                                              ; preds = %340, %337, %334
  %344 = load i32, i32* @t_flag, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %349, label %346

346:                                              ; preds = %343
  %347 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0))
  %348 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  br label %349

349:                                              ; preds = %346, %343
  %350 = call i32 (...) @print_s0()
  %351 = load i32, i32* @t_flag, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %359, label %353

353:                                              ; preds = %349
  %354 = call i64 @ok(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0))
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %353
  %357 = call i32 (...) @write_s0()
  br label %358

358:                                              ; preds = %356, %353
  br label %361

359:                                              ; preds = %349
  %360 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.22, i64 0, i64 0))
  br label %361

361:                                              ; preds = %359, %358
  br label %362

362:                                              ; preds = %361, %340
  br label %363

363:                                              ; preds = %362, %284
  %364 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @get_rootdisk(...) #1

declare dso_local i8* @g_device_path(i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @open_disk(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @read_disk(i32, i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @read_s0(...) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @reset_boot(...) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @dos(%struct.dos_partition*) #1

declare dso_local i32 @print_s0(...) #1

declare dso_local i32 @write_s0(...) #1

declare dso_local i32 @read_config(i8*) #1

declare dso_local i32 @get_params_to_use(...) #1

declare dso_local i32 @print_params(...) #1

declare dso_local i32 @init_sector0(i32) #1

declare dso_local i32 @change_part(i32) #1

declare dso_local i32 @change_active(i32) #1

declare dso_local i32 @change_code(...) #1

declare dso_local i64 @ok(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
