; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/tests/extr_grp_test.c_test_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/tests/extr_grp_test.c_test_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GR_NAME = common dso_local global i32 0, align 4
@GR_PASSWD = common dso_local global i32 0, align 4
@GR_GID = common dso_local global i32 0, align 4
@GR_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"gr_name\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"gr_passwd\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"gr_gid\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"gr_mem\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOTCAPABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fields(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [4 x i8*], align 16
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @GR_NAME, align 4
  %7 = load i32, i32* @GR_PASSWD, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @GR_GID, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @GR_MEM, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @runtest_fields(i32* %5, i32 %12)
  %14 = call i32 @CHECK(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32* @cap_clone(i32* %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @CHECK(i32 %19)
  %21 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %23, align 16
  %24 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %24, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %27 = call i32 @cap_grp_limit_fields(i32* %25, i8** %26, i32 4)
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @CHECK(i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @GR_NAME, align 4
  %33 = load i32, i32* @GR_PASSWD, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @GR_GID, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @GR_MEM, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @runtest_fields(i32* %31, i32 %38)
  %40 = call i32 @CHECK(i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @cap_close(i32* %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32* @cap_clone(i32* %43)
  store i32* %44, i32** %3, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @CHECK(i32 %47)
  %49 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %49, align 16
  %50 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %50, align 8
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %51, align 16
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %54 = call i32 @cap_grp_limit_fields(i32* %52, i8** %53, i32 3)
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @CHECK(i32 %56)
  %58 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %58, align 16
  %59 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %59, align 8
  %60 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %60, align 16
  %61 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %61, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %64 = call i32 @cap_grp_limit_fields(i32* %62, i8** %63, i32 4)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %70

66:                                               ; preds = %1
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @ENOTCAPABLE, align 8
  %69 = icmp eq i64 %67, %68
  br label %70

70:                                               ; preds = %66, %1
  %71 = phi i1 [ false, %1 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @CHECK(i32 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* @GR_PASSWD, align 4
  %76 = load i32, i32* @GR_GID, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @GR_MEM, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @runtest_fields(i32* %74, i32 %79)
  %81 = call i32 @CHECK(i32 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @cap_close(i32* %82)
  %84 = load i32*, i32** %2, align 8
  %85 = call i32* @cap_clone(i32* %84)
  store i32* %85, i32** %3, align 8
  %86 = load i32*, i32** %3, align 8
  %87 = icmp ne i32* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i32 @CHECK(i32 %88)
  %90 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %90, align 16
  %91 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %91, align 8
  %92 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %92, align 16
  %93 = load i32*, i32** %3, align 8
  %94 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %95 = call i32 @cap_grp_limit_fields(i32* %93, i8** %94, i32 3)
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @CHECK(i32 %97)
  %99 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %99, align 16
  %100 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %100, align 8
  %101 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %101, align 16
  %102 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %102, align 8
  %103 = load i32*, i32** %3, align 8
  %104 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %105 = call i32 @cap_grp_limit_fields(i32* %103, i8** %104, i32 4)
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %111

107:                                              ; preds = %70
  %108 = load i64, i64* @errno, align 8
  %109 = load i64, i64* @ENOTCAPABLE, align 8
  %110 = icmp eq i64 %108, %109
  br label %111

111:                                              ; preds = %107, %70
  %112 = phi i1 [ false, %70 ], [ %110, %107 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @CHECK(i32 %113)
  %115 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %115, align 16
  %116 = load i32*, i32** %3, align 8
  %117 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %118 = call i32 @cap_grp_limit_fields(i32* %116, i8** %117, i32 1)
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load i64, i64* @errno, align 8
  %122 = load i64, i64* @ENOTCAPABLE, align 8
  %123 = icmp eq i64 %121, %122
  br label %124

124:                                              ; preds = %120, %111
  %125 = phi i1 [ false, %111 ], [ %123, %120 ]
  %126 = zext i1 %125 to i32
  %127 = call i32 @CHECK(i32 %126)
  %128 = load i32*, i32** %3, align 8
  %129 = load i32, i32* @GR_NAME, align 4
  %130 = load i32, i32* @GR_GID, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @GR_MEM, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @runtest_fields(i32* %128, i32 %133)
  %135 = call i32 @CHECK(i32 %134)
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @cap_close(i32* %136)
  %138 = load i32*, i32** %2, align 8
  %139 = call i32* @cap_clone(i32* %138)
  store i32* %139, i32** %3, align 8
  %140 = load i32*, i32** %3, align 8
  %141 = icmp ne i32* %140, null
  %142 = zext i1 %141 to i32
  %143 = call i32 @CHECK(i32 %142)
  %144 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %144, align 16
  %145 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %145, align 8
  %146 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %146, align 16
  %147 = load i32*, i32** %3, align 8
  %148 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %149 = call i32 @cap_grp_limit_fields(i32* %147, i8** %148, i32 3)
  %150 = icmp eq i32 %149, 0
  %151 = zext i1 %150 to i32
  %152 = call i32 @CHECK(i32 %151)
  %153 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %153, align 16
  %154 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %154, align 8
  %155 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %155, align 16
  %156 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %156, align 8
  %157 = load i32*, i32** %3, align 8
  %158 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %159 = call i32 @cap_grp_limit_fields(i32* %157, i8** %158, i32 4)
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %165

161:                                              ; preds = %124
  %162 = load i64, i64* @errno, align 8
  %163 = load i64, i64* @ENOTCAPABLE, align 8
  %164 = icmp eq i64 %162, %163
  br label %165

165:                                              ; preds = %161, %124
  %166 = phi i1 [ false, %124 ], [ %164, %161 ]
  %167 = zext i1 %166 to i32
  %168 = call i32 @CHECK(i32 %167)
  %169 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %169, align 16
  %170 = load i32*, i32** %3, align 8
  %171 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %172 = call i32 @cap_grp_limit_fields(i32* %170, i8** %171, i32 1)
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %178

174:                                              ; preds = %165
  %175 = load i64, i64* @errno, align 8
  %176 = load i64, i64* @ENOTCAPABLE, align 8
  %177 = icmp eq i64 %175, %176
  br label %178

178:                                              ; preds = %174, %165
  %179 = phi i1 [ false, %165 ], [ %177, %174 ]
  %180 = zext i1 %179 to i32
  %181 = call i32 @CHECK(i32 %180)
  %182 = load i32*, i32** %3, align 8
  %183 = load i32, i32* @GR_NAME, align 4
  %184 = load i32, i32* @GR_PASSWD, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @GR_MEM, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @runtest_fields(i32* %182, i32 %187)
  %189 = call i32 @CHECK(i32 %188)
  %190 = load i32*, i32** %3, align 8
  %191 = call i32 @cap_close(i32* %190)
  %192 = load i32*, i32** %2, align 8
  %193 = call i32* @cap_clone(i32* %192)
  store i32* %193, i32** %3, align 8
  %194 = load i32*, i32** %3, align 8
  %195 = icmp ne i32* %194, null
  %196 = zext i1 %195 to i32
  %197 = call i32 @CHECK(i32 %196)
  %198 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %198, align 16
  %199 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %199, align 8
  %200 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %200, align 16
  %201 = load i32*, i32** %3, align 8
  %202 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %203 = call i32 @cap_grp_limit_fields(i32* %201, i8** %202, i32 3)
  %204 = icmp eq i32 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i32 @CHECK(i32 %205)
  %207 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %207, align 16
  %208 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %208, align 8
  %209 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %209, align 16
  %210 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %210, align 8
  %211 = load i32*, i32** %3, align 8
  %212 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %213 = call i32 @cap_grp_limit_fields(i32* %211, i8** %212, i32 4)
  %214 = icmp eq i32 %213, -1
  br i1 %214, label %215, label %219

215:                                              ; preds = %178
  %216 = load i64, i64* @errno, align 8
  %217 = load i64, i64* @ENOTCAPABLE, align 8
  %218 = icmp eq i64 %216, %217
  br label %219

219:                                              ; preds = %215, %178
  %220 = phi i1 [ false, %178 ], [ %218, %215 ]
  %221 = zext i1 %220 to i32
  %222 = call i32 @CHECK(i32 %221)
  %223 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %223, align 16
  %224 = load i32*, i32** %3, align 8
  %225 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %226 = call i32 @cap_grp_limit_fields(i32* %224, i8** %225, i32 1)
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %228, label %232

228:                                              ; preds = %219
  %229 = load i64, i64* @errno, align 8
  %230 = load i64, i64* @ENOTCAPABLE, align 8
  %231 = icmp eq i64 %229, %230
  br label %232

232:                                              ; preds = %228, %219
  %233 = phi i1 [ false, %219 ], [ %231, %228 ]
  %234 = zext i1 %233 to i32
  %235 = call i32 @CHECK(i32 %234)
  %236 = load i32*, i32** %3, align 8
  %237 = load i32, i32* @GR_NAME, align 4
  %238 = load i32, i32* @GR_PASSWD, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @GR_GID, align 4
  %241 = or i32 %239, %240
  %242 = call i32 @runtest_fields(i32* %236, i32 %241)
  %243 = call i32 @CHECK(i32 %242)
  %244 = load i32*, i32** %3, align 8
  %245 = call i32 @cap_close(i32* %244)
  %246 = load i32*, i32** %2, align 8
  %247 = call i32* @cap_clone(i32* %246)
  store i32* %247, i32** %3, align 8
  %248 = load i32*, i32** %3, align 8
  %249 = icmp ne i32* %248, null
  %250 = zext i1 %249 to i32
  %251 = call i32 @CHECK(i32 %250)
  %252 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %252, align 16
  %253 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %253, align 8
  %254 = load i32*, i32** %3, align 8
  %255 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %256 = call i32 @cap_grp_limit_fields(i32* %254, i8** %255, i32 2)
  %257 = icmp eq i32 %256, 0
  %258 = zext i1 %257 to i32
  %259 = call i32 @CHECK(i32 %258)
  %260 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %260, align 16
  %261 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %261, align 8
  %262 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %262, align 16
  %263 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %263, align 8
  %264 = load i32*, i32** %3, align 8
  %265 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %266 = call i32 @cap_grp_limit_fields(i32* %264, i8** %265, i32 4)
  %267 = icmp eq i32 %266, -1
  br i1 %267, label %268, label %272

268:                                              ; preds = %232
  %269 = load i64, i64* @errno, align 8
  %270 = load i64, i64* @ENOTCAPABLE, align 8
  %271 = icmp eq i64 %269, %270
  br label %272

272:                                              ; preds = %268, %232
  %273 = phi i1 [ false, %232 ], [ %271, %268 ]
  %274 = zext i1 %273 to i32
  %275 = call i32 @CHECK(i32 %274)
  %276 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %276, align 16
  %277 = load i32*, i32** %3, align 8
  %278 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %279 = call i32 @cap_grp_limit_fields(i32* %277, i8** %278, i32 1)
  %280 = icmp eq i32 %279, -1
  br i1 %280, label %281, label %285

281:                                              ; preds = %272
  %282 = load i64, i64* @errno, align 8
  %283 = load i64, i64* @ENOTCAPABLE, align 8
  %284 = icmp eq i64 %282, %283
  br label %285

285:                                              ; preds = %281, %272
  %286 = phi i1 [ false, %272 ], [ %284, %281 ]
  %287 = zext i1 %286 to i32
  %288 = call i32 @CHECK(i32 %287)
  %289 = load i32*, i32** %3, align 8
  %290 = load i32, i32* @GR_NAME, align 4
  %291 = load i32, i32* @GR_PASSWD, align 4
  %292 = or i32 %290, %291
  %293 = call i32 @runtest_fields(i32* %289, i32 %292)
  %294 = call i32 @CHECK(i32 %293)
  %295 = load i32*, i32** %3, align 8
  %296 = call i32 @cap_close(i32* %295)
  %297 = load i32*, i32** %2, align 8
  %298 = call i32* @cap_clone(i32* %297)
  store i32* %298, i32** %3, align 8
  %299 = load i32*, i32** %3, align 8
  %300 = icmp ne i32* %299, null
  %301 = zext i1 %300 to i32
  %302 = call i32 @CHECK(i32 %301)
  %303 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %303, align 16
  %304 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %304, align 8
  %305 = load i32*, i32** %3, align 8
  %306 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %307 = call i32 @cap_grp_limit_fields(i32* %305, i8** %306, i32 2)
  %308 = icmp eq i32 %307, 0
  %309 = zext i1 %308 to i32
  %310 = call i32 @CHECK(i32 %309)
  %311 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %311, align 16
  %312 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %312, align 8
  %313 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %313, align 16
  %314 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %314, align 8
  %315 = load i32*, i32** %3, align 8
  %316 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %317 = call i32 @cap_grp_limit_fields(i32* %315, i8** %316, i32 4)
  %318 = icmp eq i32 %317, -1
  br i1 %318, label %319, label %323

319:                                              ; preds = %285
  %320 = load i64, i64* @errno, align 8
  %321 = load i64, i64* @ENOTCAPABLE, align 8
  %322 = icmp eq i64 %320, %321
  br label %323

323:                                              ; preds = %319, %285
  %324 = phi i1 [ false, %285 ], [ %322, %319 ]
  %325 = zext i1 %324 to i32
  %326 = call i32 @CHECK(i32 %325)
  %327 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %327, align 16
  %328 = load i32*, i32** %3, align 8
  %329 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %330 = call i32 @cap_grp_limit_fields(i32* %328, i8** %329, i32 1)
  %331 = icmp eq i32 %330, -1
  br i1 %331, label %332, label %336

332:                                              ; preds = %323
  %333 = load i64, i64* @errno, align 8
  %334 = load i64, i64* @ENOTCAPABLE, align 8
  %335 = icmp eq i64 %333, %334
  br label %336

336:                                              ; preds = %332, %323
  %337 = phi i1 [ false, %323 ], [ %335, %332 ]
  %338 = zext i1 %337 to i32
  %339 = call i32 @CHECK(i32 %338)
  %340 = load i32*, i32** %3, align 8
  %341 = load i32, i32* @GR_NAME, align 4
  %342 = load i32, i32* @GR_GID, align 4
  %343 = or i32 %341, %342
  %344 = call i32 @runtest_fields(i32* %340, i32 %343)
  %345 = call i32 @CHECK(i32 %344)
  %346 = load i32*, i32** %3, align 8
  %347 = call i32 @cap_close(i32* %346)
  %348 = load i32*, i32** %2, align 8
  %349 = call i32* @cap_clone(i32* %348)
  store i32* %349, i32** %3, align 8
  %350 = load i32*, i32** %3, align 8
  %351 = icmp ne i32* %350, null
  %352 = zext i1 %351 to i32
  %353 = call i32 @CHECK(i32 %352)
  %354 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %354, align 16
  %355 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %355, align 8
  %356 = load i32*, i32** %3, align 8
  %357 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %358 = call i32 @cap_grp_limit_fields(i32* %356, i8** %357, i32 2)
  %359 = icmp eq i32 %358, 0
  %360 = zext i1 %359 to i32
  %361 = call i32 @CHECK(i32 %360)
  %362 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %362, align 16
  %363 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %363, align 8
  %364 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %364, align 16
  %365 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %365, align 8
  %366 = load i32*, i32** %3, align 8
  %367 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %368 = call i32 @cap_grp_limit_fields(i32* %366, i8** %367, i32 4)
  %369 = icmp eq i32 %368, -1
  br i1 %369, label %370, label %374

370:                                              ; preds = %336
  %371 = load i64, i64* @errno, align 8
  %372 = load i64, i64* @ENOTCAPABLE, align 8
  %373 = icmp eq i64 %371, %372
  br label %374

374:                                              ; preds = %370, %336
  %375 = phi i1 [ false, %336 ], [ %373, %370 ]
  %376 = zext i1 %375 to i32
  %377 = call i32 @CHECK(i32 %376)
  %378 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %378, align 16
  %379 = load i32*, i32** %3, align 8
  %380 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %381 = call i32 @cap_grp_limit_fields(i32* %379, i8** %380, i32 1)
  %382 = icmp eq i32 %381, -1
  br i1 %382, label %383, label %387

383:                                              ; preds = %374
  %384 = load i64, i64* @errno, align 8
  %385 = load i64, i64* @ENOTCAPABLE, align 8
  %386 = icmp eq i64 %384, %385
  br label %387

387:                                              ; preds = %383, %374
  %388 = phi i1 [ false, %374 ], [ %386, %383 ]
  %389 = zext i1 %388 to i32
  %390 = call i32 @CHECK(i32 %389)
  %391 = load i32*, i32** %3, align 8
  %392 = load i32, i32* @GR_NAME, align 4
  %393 = load i32, i32* @GR_MEM, align 4
  %394 = or i32 %392, %393
  %395 = call i32 @runtest_fields(i32* %391, i32 %394)
  %396 = call i32 @CHECK(i32 %395)
  %397 = load i32*, i32** %3, align 8
  %398 = call i32 @cap_close(i32* %397)
  %399 = load i32*, i32** %2, align 8
  %400 = call i32* @cap_clone(i32* %399)
  store i32* %400, i32** %3, align 8
  %401 = load i32*, i32** %3, align 8
  %402 = icmp ne i32* %401, null
  %403 = zext i1 %402 to i32
  %404 = call i32 @CHECK(i32 %403)
  %405 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %405, align 16
  %406 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %406, align 8
  %407 = load i32*, i32** %3, align 8
  %408 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %409 = call i32 @cap_grp_limit_fields(i32* %407, i8** %408, i32 2)
  %410 = icmp eq i32 %409, 0
  %411 = zext i1 %410 to i32
  %412 = call i32 @CHECK(i32 %411)
  %413 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %413, align 16
  %414 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %414, align 8
  %415 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %415, align 16
  %416 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %416, align 8
  %417 = load i32*, i32** %3, align 8
  %418 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %419 = call i32 @cap_grp_limit_fields(i32* %417, i8** %418, i32 4)
  %420 = icmp eq i32 %419, -1
  br i1 %420, label %421, label %425

421:                                              ; preds = %387
  %422 = load i64, i64* @errno, align 8
  %423 = load i64, i64* @ENOTCAPABLE, align 8
  %424 = icmp eq i64 %422, %423
  br label %425

425:                                              ; preds = %421, %387
  %426 = phi i1 [ false, %387 ], [ %424, %421 ]
  %427 = zext i1 %426 to i32
  %428 = call i32 @CHECK(i32 %427)
  %429 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %429, align 16
  %430 = load i32*, i32** %3, align 8
  %431 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %432 = call i32 @cap_grp_limit_fields(i32* %430, i8** %431, i32 1)
  %433 = icmp eq i32 %432, -1
  br i1 %433, label %434, label %438

434:                                              ; preds = %425
  %435 = load i64, i64* @errno, align 8
  %436 = load i64, i64* @ENOTCAPABLE, align 8
  %437 = icmp eq i64 %435, %436
  br label %438

438:                                              ; preds = %434, %425
  %439 = phi i1 [ false, %425 ], [ %437, %434 ]
  %440 = zext i1 %439 to i32
  %441 = call i32 @CHECK(i32 %440)
  %442 = load i32*, i32** %3, align 8
  %443 = load i32, i32* @GR_PASSWD, align 4
  %444 = load i32, i32* @GR_GID, align 4
  %445 = or i32 %443, %444
  %446 = call i32 @runtest_fields(i32* %442, i32 %445)
  %447 = call i32 @CHECK(i32 %446)
  %448 = load i32*, i32** %3, align 8
  %449 = call i32 @cap_close(i32* %448)
  %450 = load i32*, i32** %2, align 8
  %451 = call i32* @cap_clone(i32* %450)
  store i32* %451, i32** %3, align 8
  %452 = load i32*, i32** %3, align 8
  %453 = icmp ne i32* %452, null
  %454 = zext i1 %453 to i32
  %455 = call i32 @CHECK(i32 %454)
  %456 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %456, align 16
  %457 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %457, align 8
  %458 = load i32*, i32** %3, align 8
  %459 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %460 = call i32 @cap_grp_limit_fields(i32* %458, i8** %459, i32 2)
  %461 = icmp eq i32 %460, 0
  %462 = zext i1 %461 to i32
  %463 = call i32 @CHECK(i32 %462)
  %464 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %464, align 16
  %465 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %465, align 8
  %466 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %466, align 16
  %467 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %467, align 8
  %468 = load i32*, i32** %3, align 8
  %469 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %470 = call i32 @cap_grp_limit_fields(i32* %468, i8** %469, i32 4)
  %471 = icmp eq i32 %470, -1
  br i1 %471, label %472, label %476

472:                                              ; preds = %438
  %473 = load i64, i64* @errno, align 8
  %474 = load i64, i64* @ENOTCAPABLE, align 8
  %475 = icmp eq i64 %473, %474
  br label %476

476:                                              ; preds = %472, %438
  %477 = phi i1 [ false, %438 ], [ %475, %472 ]
  %478 = zext i1 %477 to i32
  %479 = call i32 @CHECK(i32 %478)
  %480 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %480, align 16
  %481 = load i32*, i32** %3, align 8
  %482 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %483 = call i32 @cap_grp_limit_fields(i32* %481, i8** %482, i32 1)
  %484 = icmp eq i32 %483, -1
  br i1 %484, label %485, label %489

485:                                              ; preds = %476
  %486 = load i64, i64* @errno, align 8
  %487 = load i64, i64* @ENOTCAPABLE, align 8
  %488 = icmp eq i64 %486, %487
  br label %489

489:                                              ; preds = %485, %476
  %490 = phi i1 [ false, %476 ], [ %488, %485 ]
  %491 = zext i1 %490 to i32
  %492 = call i32 @CHECK(i32 %491)
  %493 = load i32*, i32** %3, align 8
  %494 = load i32, i32* @GR_PASSWD, align 4
  %495 = load i32, i32* @GR_MEM, align 4
  %496 = or i32 %494, %495
  %497 = call i32 @runtest_fields(i32* %493, i32 %496)
  %498 = call i32 @CHECK(i32 %497)
  %499 = load i32*, i32** %3, align 8
  %500 = call i32 @cap_close(i32* %499)
  %501 = load i32*, i32** %2, align 8
  %502 = call i32* @cap_clone(i32* %501)
  store i32* %502, i32** %3, align 8
  %503 = load i32*, i32** %3, align 8
  %504 = icmp ne i32* %503, null
  %505 = zext i1 %504 to i32
  %506 = call i32 @CHECK(i32 %505)
  %507 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %507, align 16
  %508 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %508, align 8
  %509 = load i32*, i32** %3, align 8
  %510 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %511 = call i32 @cap_grp_limit_fields(i32* %509, i8** %510, i32 2)
  %512 = icmp eq i32 %511, 0
  %513 = zext i1 %512 to i32
  %514 = call i32 @CHECK(i32 %513)
  %515 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %515, align 16
  %516 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %516, align 8
  %517 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %517, align 16
  %518 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %518, align 8
  %519 = load i32*, i32** %3, align 8
  %520 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %521 = call i32 @cap_grp_limit_fields(i32* %519, i8** %520, i32 4)
  %522 = icmp eq i32 %521, -1
  br i1 %522, label %523, label %527

523:                                              ; preds = %489
  %524 = load i64, i64* @errno, align 8
  %525 = load i64, i64* @ENOTCAPABLE, align 8
  %526 = icmp eq i64 %524, %525
  br label %527

527:                                              ; preds = %523, %489
  %528 = phi i1 [ false, %489 ], [ %526, %523 ]
  %529 = zext i1 %528 to i32
  %530 = call i32 @CHECK(i32 %529)
  %531 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %531, align 16
  %532 = load i32*, i32** %3, align 8
  %533 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0
  %534 = call i32 @cap_grp_limit_fields(i32* %532, i8** %533, i32 1)
  %535 = icmp eq i32 %534, -1
  br i1 %535, label %536, label %540

536:                                              ; preds = %527
  %537 = load i64, i64* @errno, align 8
  %538 = load i64, i64* @ENOTCAPABLE, align 8
  %539 = icmp eq i64 %537, %538
  br label %540

540:                                              ; preds = %536, %527
  %541 = phi i1 [ false, %527 ], [ %539, %536 ]
  %542 = zext i1 %541 to i32
  %543 = call i32 @CHECK(i32 %542)
  %544 = load i32*, i32** %3, align 8
  %545 = load i32, i32* @GR_GID, align 4
  %546 = load i32, i32* @GR_MEM, align 4
  %547 = or i32 %545, %546
  %548 = call i32 @runtest_fields(i32* %544, i32 %547)
  %549 = call i32 @CHECK(i32 %548)
  %550 = load i32*, i32** %3, align 8
  %551 = call i32 @cap_close(i32* %550)
  ret void
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @runtest_fields(i32*, i32) #1

declare dso_local i32* @cap_clone(i32*) #1

declare dso_local i32 @cap_grp_limit_fields(i32*, i8**, i32) #1

declare dso_local i32 @cap_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
