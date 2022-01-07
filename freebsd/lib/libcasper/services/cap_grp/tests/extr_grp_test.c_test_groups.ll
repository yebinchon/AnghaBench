; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/tests/extr_grp_test.c_test_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/tests/extr_grp_test.c_test_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"wheel\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"kmem\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOTCAPABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_groups(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [5 x i8*], align 16
  %5 = alloca [5 x i32], align 16
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @cap_clone(i32* %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @CHECK(i32 %10)
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %12, align 16
  %13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 16
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 16
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %19 = call i32 @cap_grp_limit_groups(i32* %17, i8** %18, i32 5, i32* null, i32 0)
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @CHECK(i32 %21)
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %23, align 16
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  store i32 2, i32* %25, align 8
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  store i32 3, i32* %26, align 4
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  store i32 4, i32* %27, align 16
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %31 = call i32 @runtest_groups(i32* %28, i8** %29, i32* %30, i32 5)
  %32 = call i32 @CHECK(i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @cap_close(i32* %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32* @cap_clone(i32* %35)
  store i32* %36, i32** %3, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @CHECK(i32 %39)
  %41 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %41, align 16
  %42 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %42, align 8
  %43 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %43, align 16
  %44 = load i32*, i32** %3, align 8
  %45 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %46 = call i32 @cap_grp_limit_groups(i32* %44, i8** %45, i32 3, i32* null, i32 0)
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @CHECK(i32 %48)
  %50 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %53 = call i32 @cap_grp_limit_groups(i32* %51, i8** %52, i32 4, i32* null, i32 0)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %59

55:                                               ; preds = %1
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @ENOTCAPABLE, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %55, %1
  %60 = phi i1 [ false, %1 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @CHECK(i32 %61)
  %63 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %63, align 16
  %64 = load i32*, i32** %3, align 8
  %65 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %66 = call i32 @cap_grp_limit_groups(i32* %64, i8** %65, i32 1, i32* null, i32 0)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i64, i64* @errno, align 8
  %70 = load i64, i64* @ENOTCAPABLE, align 8
  %71 = icmp eq i64 %69, %70
  br label %72

72:                                               ; preds = %68, %59
  %73 = phi i1 [ false, %59 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @CHECK(i32 %74)
  %76 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %76, align 16
  %77 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 2, i32* %77, align 16
  %78 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 3, i32* %78, align 4
  %79 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  store i32 4, i32* %79, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %82 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %83 = call i32 @runtest_groups(i32* %80, i8** %81, i32* %82, i32 3)
  %84 = call i32 @CHECK(i32 %83)
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @cap_close(i32* %85)
  %87 = load i32*, i32** %2, align 8
  %88 = call i32* @cap_clone(i32* %87)
  store i32* %88, i32** %3, align 8
  %89 = load i32*, i32** %3, align 8
  %90 = icmp ne i32* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i32 @CHECK(i32 %91)
  %93 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %93, align 16
  %94 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %94, align 8
  %95 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %95, align 16
  %96 = load i32*, i32** %3, align 8
  %97 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %98 = call i32 @cap_grp_limit_groups(i32* %96, i8** %97, i32 3, i32* null, i32 0)
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @CHECK(i32 %100)
  %102 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %102, align 8
  %103 = load i32*, i32** %3, align 8
  %104 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %105 = call i32 @cap_grp_limit_groups(i32* %103, i8** %104, i32 4, i32* null, i32 0)
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %111

107:                                              ; preds = %72
  %108 = load i64, i64* @errno, align 8
  %109 = load i64, i64* @ENOTCAPABLE, align 8
  %110 = icmp eq i64 %108, %109
  br label %111

111:                                              ; preds = %107, %72
  %112 = phi i1 [ false, %72 ], [ %110, %107 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @CHECK(i32 %113)
  %115 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %115, align 16
  %116 = load i32*, i32** %3, align 8
  %117 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %118 = call i32 @cap_grp_limit_groups(i32* %116, i8** %117, i32 1, i32* null, i32 0)
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
  %128 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %128, align 16
  %129 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %129, align 16
  %130 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 2, i32* %130, align 4
  %131 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  store i32 4, i32* %131, align 8
  %132 = load i32*, i32** %3, align 8
  %133 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %134 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %135 = call i32 @runtest_groups(i32* %132, i8** %133, i32* %134, i32 3)
  %136 = call i32 @CHECK(i32 %135)
  %137 = load i32*, i32** %3, align 8
  %138 = call i32 @cap_close(i32* %137)
  %139 = load i32*, i32** %2, align 8
  %140 = call i32* @cap_clone(i32* %139)
  store i32* %140, i32** %3, align 8
  %141 = load i32*, i32** %3, align 8
  %142 = icmp ne i32* %141, null
  %143 = zext i1 %142 to i32
  %144 = call i32 @CHECK(i32 %143)
  %145 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %145, align 16
  %146 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %146, align 8
  %147 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %147, align 16
  %148 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 2, i32* %148, align 16
  %149 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 3, i32* %149, align 4
  %150 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  store i32 4, i32* %150, align 8
  %151 = load i32*, i32** %3, align 8
  %152 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %153 = call i32 @cap_grp_limit_groups(i32* %151, i8** null, i32 0, i32* %152, i32 3)
  %154 = icmp eq i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 @CHECK(i32 %155)
  %157 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  store i32 0, i32* %157, align 4
  %158 = load i32*, i32** %3, align 8
  %159 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %160 = call i32 @cap_grp_limit_groups(i32* %158, i8** null, i32 0, i32* %159, i32 4)
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %166

162:                                              ; preds = %124
  %163 = load i64, i64* @errno, align 8
  %164 = load i64, i64* @ENOTCAPABLE, align 8
  %165 = icmp eq i64 %163, %164
  br label %166

166:                                              ; preds = %162, %124
  %167 = phi i1 [ false, %124 ], [ %165, %162 ]
  %168 = zext i1 %167 to i32
  %169 = call i32 @CHECK(i32 %168)
  %170 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %170, align 16
  %171 = load i32*, i32** %3, align 8
  %172 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %173 = call i32 @cap_grp_limit_groups(i32* %171, i8** null, i32 0, i32* %172, i32 1)
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %179

175:                                              ; preds = %166
  %176 = load i64, i64* @errno, align 8
  %177 = load i64, i64* @ENOTCAPABLE, align 8
  %178 = icmp eq i64 %176, %177
  br label %179

179:                                              ; preds = %175, %166
  %180 = phi i1 [ false, %166 ], [ %178, %175 ]
  %181 = zext i1 %180 to i32
  %182 = call i32 @CHECK(i32 %181)
  %183 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 2, i32* %183, align 16
  %184 = load i32*, i32** %3, align 8
  %185 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %186 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %187 = call i32 @runtest_groups(i32* %184, i8** %185, i32* %186, i32 3)
  %188 = call i32 @CHECK(i32 %187)
  %189 = load i32*, i32** %3, align 8
  %190 = call i32 @cap_close(i32* %189)
  %191 = load i32*, i32** %2, align 8
  %192 = call i32* @cap_clone(i32* %191)
  store i32* %192, i32** %3, align 8
  %193 = load i32*, i32** %3, align 8
  %194 = icmp ne i32* %193, null
  %195 = zext i1 %194 to i32
  %196 = call i32 @CHECK(i32 %195)
  %197 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %197, align 16
  %198 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %198, align 8
  %199 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %199, align 16
  %200 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %200, align 16
  %201 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 2, i32* %201, align 4
  %202 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  store i32 4, i32* %202, align 8
  %203 = load i32*, i32** %3, align 8
  %204 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %205 = call i32 @cap_grp_limit_groups(i32* %203, i8** null, i32 0, i32* %204, i32 3)
  %206 = icmp eq i32 %205, 0
  %207 = zext i1 %206 to i32
  %208 = call i32 @CHECK(i32 %207)
  %209 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  store i32 1, i32* %209, align 4
  %210 = load i32*, i32** %3, align 8
  %211 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %212 = call i32 @cap_grp_limit_groups(i32* %210, i8** null, i32 0, i32* %211, i32 4)
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %214, label %218

214:                                              ; preds = %179
  %215 = load i64, i64* @errno, align 8
  %216 = load i64, i64* @ENOTCAPABLE, align 8
  %217 = icmp eq i64 %215, %216
  br label %218

218:                                              ; preds = %214, %179
  %219 = phi i1 [ false, %179 ], [ %217, %214 ]
  %220 = zext i1 %219 to i32
  %221 = call i32 @CHECK(i32 %220)
  %222 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 1, i32* %222, align 16
  %223 = load i32*, i32** %3, align 8
  %224 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %225 = call i32 @cap_grp_limit_groups(i32* %223, i8** null, i32 0, i32* %224, i32 1)
  %226 = icmp eq i32 %225, -1
  br i1 %226, label %227, label %231

227:                                              ; preds = %218
  %228 = load i64, i64* @errno, align 8
  %229 = load i64, i64* @ENOTCAPABLE, align 8
  %230 = icmp eq i64 %228, %229
  br label %231

231:                                              ; preds = %227, %218
  %232 = phi i1 [ false, %218 ], [ %230, %227 ]
  %233 = zext i1 %232 to i32
  %234 = call i32 @CHECK(i32 %233)
  %235 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %235, align 16
  %236 = load i32*, i32** %3, align 8
  %237 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %238 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %239 = call i32 @runtest_groups(i32* %236, i8** %237, i32* %238, i32 3)
  %240 = call i32 @CHECK(i32 %239)
  %241 = load i32*, i32** %3, align 8
  %242 = call i32 @cap_close(i32* %241)
  %243 = load i32*, i32** %2, align 8
  %244 = call i32* @cap_clone(i32* %243)
  store i32* %244, i32** %3, align 8
  %245 = load i32*, i32** %3, align 8
  %246 = icmp ne i32* %245, null
  %247 = zext i1 %246 to i32
  %248 = call i32 @CHECK(i32 %247)
  %249 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %249, align 16
  %250 = load i32*, i32** %3, align 8
  %251 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %252 = call i32 @cap_grp_limit_groups(i32* %250, i8** %251, i32 1, i32* null, i32 0)
  %253 = icmp eq i32 %252, 0
  %254 = zext i1 %253 to i32
  %255 = call i32 @CHECK(i32 %254)
  %256 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %256, align 8
  %257 = load i32*, i32** %3, align 8
  %258 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %259 = call i32 @cap_grp_limit_groups(i32* %257, i8** %258, i32 2, i32* null, i32 0)
  %260 = icmp eq i32 %259, -1
  br i1 %260, label %261, label %265

261:                                              ; preds = %231
  %262 = load i64, i64* @errno, align 8
  %263 = load i64, i64* @ENOTCAPABLE, align 8
  %264 = icmp eq i64 %262, %263
  br label %265

265:                                              ; preds = %261, %231
  %266 = phi i1 [ false, %231 ], [ %264, %261 ]
  %267 = zext i1 %266 to i32
  %268 = call i32 @CHECK(i32 %267)
  %269 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %269, align 16
  %270 = load i32*, i32** %3, align 8
  %271 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %272 = call i32 @cap_grp_limit_groups(i32* %270, i8** %271, i32 1, i32* null, i32 0)
  %273 = icmp eq i32 %272, -1
  br i1 %273, label %274, label %278

274:                                              ; preds = %265
  %275 = load i64, i64* @errno, align 8
  %276 = load i64, i64* @ENOTCAPABLE, align 8
  %277 = icmp eq i64 %275, %276
  br label %278

278:                                              ; preds = %274, %265
  %279 = phi i1 [ false, %265 ], [ %277, %274 ]
  %280 = zext i1 %279 to i32
  %281 = call i32 @CHECK(i32 %280)
  %282 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %282, align 16
  %283 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 2, i32* %283, align 16
  %284 = load i32*, i32** %3, align 8
  %285 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %286 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %287 = call i32 @runtest_groups(i32* %284, i8** %285, i32* %286, i32 1)
  %288 = call i32 @CHECK(i32 %287)
  %289 = load i32*, i32** %3, align 8
  %290 = call i32 @cap_close(i32* %289)
  %291 = load i32*, i32** %2, align 8
  %292 = call i32* @cap_clone(i32* %291)
  store i32* %292, i32** %3, align 8
  %293 = load i32*, i32** %3, align 8
  %294 = icmp ne i32* %293, null
  %295 = zext i1 %294 to i32
  %296 = call i32 @CHECK(i32 %295)
  %297 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %297, align 16
  %298 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %298, align 8
  %299 = load i32*, i32** %3, align 8
  %300 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %301 = call i32 @cap_grp_limit_groups(i32* %299, i8** %300, i32 2, i32* null, i32 0)
  %302 = icmp eq i32 %301, 0
  %303 = zext i1 %302 to i32
  %304 = call i32 @CHECK(i32 %303)
  %305 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %305, align 16
  %306 = load i32*, i32** %3, align 8
  %307 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %308 = call i32 @cap_grp_limit_groups(i32* %306, i8** %307, i32 3, i32* null, i32 0)
  %309 = icmp eq i32 %308, -1
  br i1 %309, label %310, label %314

310:                                              ; preds = %278
  %311 = load i64, i64* @errno, align 8
  %312 = load i64, i64* @ENOTCAPABLE, align 8
  %313 = icmp eq i64 %311, %312
  br label %314

314:                                              ; preds = %310, %278
  %315 = phi i1 [ false, %278 ], [ %313, %310 ]
  %316 = zext i1 %315 to i32
  %317 = call i32 @CHECK(i32 %316)
  %318 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %318, align 16
  %319 = load i32*, i32** %3, align 8
  %320 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %321 = call i32 @cap_grp_limit_groups(i32* %319, i8** %320, i32 1, i32* null, i32 0)
  %322 = icmp eq i32 %321, -1
  br i1 %322, label %323, label %327

323:                                              ; preds = %314
  %324 = load i64, i64* @errno, align 8
  %325 = load i64, i64* @ENOTCAPABLE, align 8
  %326 = icmp eq i64 %324, %325
  br label %327

327:                                              ; preds = %323, %314
  %328 = phi i1 [ false, %314 ], [ %326, %323 ]
  %329 = zext i1 %328 to i32
  %330 = call i32 @CHECK(i32 %329)
  %331 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %331, align 16
  %332 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %332, align 16
  %333 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 4, i32* %333, align 4
  %334 = load i32*, i32** %3, align 8
  %335 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %336 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %337 = call i32 @runtest_groups(i32* %334, i8** %335, i32* %336, i32 2)
  %338 = call i32 @CHECK(i32 %337)
  %339 = load i32*, i32** %3, align 8
  %340 = call i32 @cap_close(i32* %339)
  %341 = load i32*, i32** %2, align 8
  %342 = call i32* @cap_clone(i32* %341)
  store i32* %342, i32** %3, align 8
  %343 = load i32*, i32** %3, align 8
  %344 = icmp ne i32* %343, null
  %345 = zext i1 %344 to i32
  %346 = call i32 @CHECK(i32 %345)
  %347 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %347, align 16
  %348 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 2, i32* %348, align 16
  %349 = load i32*, i32** %3, align 8
  %350 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %351 = call i32 @cap_grp_limit_groups(i32* %349, i8** null, i32 0, i32* %350, i32 1)
  %352 = icmp eq i32 %351, 0
  %353 = zext i1 %352 to i32
  %354 = call i32 @CHECK(i32 %353)
  %355 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 1, i32* %355, align 4
  %356 = load i32*, i32** %3, align 8
  %357 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %358 = call i32 @cap_grp_limit_groups(i32* %356, i8** null, i32 0, i32* %357, i32 2)
  %359 = icmp eq i32 %358, -1
  br i1 %359, label %360, label %364

360:                                              ; preds = %327
  %361 = load i64, i64* @errno, align 8
  %362 = load i64, i64* @ENOTCAPABLE, align 8
  %363 = icmp eq i64 %361, %362
  br label %364

364:                                              ; preds = %360, %327
  %365 = phi i1 [ false, %327 ], [ %363, %360 ]
  %366 = zext i1 %365 to i32
  %367 = call i32 @CHECK(i32 %366)
  %368 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 1, i32* %368, align 16
  %369 = load i32*, i32** %3, align 8
  %370 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %371 = call i32 @cap_grp_limit_groups(i32* %369, i8** null, i32 0, i32* %370, i32 1)
  %372 = icmp eq i32 %371, -1
  br i1 %372, label %373, label %377

373:                                              ; preds = %364
  %374 = load i64, i64* @errno, align 8
  %375 = load i64, i64* @ENOTCAPABLE, align 8
  %376 = icmp eq i64 %374, %375
  br label %377

377:                                              ; preds = %373, %364
  %378 = phi i1 [ false, %364 ], [ %376, %373 ]
  %379 = zext i1 %378 to i32
  %380 = call i32 @CHECK(i32 %379)
  %381 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 2, i32* %381, align 16
  %382 = load i32*, i32** %3, align 8
  %383 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %384 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %385 = call i32 @runtest_groups(i32* %382, i8** %383, i32* %384, i32 1)
  %386 = call i32 @CHECK(i32 %385)
  %387 = load i32*, i32** %3, align 8
  %388 = call i32 @cap_close(i32* %387)
  %389 = load i32*, i32** %2, align 8
  %390 = call i32* @cap_clone(i32* %389)
  store i32* %390, i32** %3, align 8
  %391 = load i32*, i32** %3, align 8
  %392 = icmp ne i32* %391, null
  %393 = zext i1 %392 to i32
  %394 = call i32 @CHECK(i32 %393)
  %395 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %395, align 16
  %396 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %396, align 8
  %397 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %397, align 16
  %398 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 4, i32* %398, align 4
  %399 = load i32*, i32** %3, align 8
  %400 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %401 = call i32 @cap_grp_limit_groups(i32* %399, i8** null, i32 0, i32* %400, i32 2)
  %402 = icmp eq i32 %401, 0
  %403 = zext i1 %402 to i32
  %404 = call i32 @CHECK(i32 %403)
  %405 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  store i32 1, i32* %405, align 8
  %406 = load i32*, i32** %3, align 8
  %407 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %408 = call i32 @cap_grp_limit_groups(i32* %406, i8** null, i32 0, i32* %407, i32 3)
  %409 = icmp eq i32 %408, -1
  br i1 %409, label %410, label %414

410:                                              ; preds = %377
  %411 = load i64, i64* @errno, align 8
  %412 = load i64, i64* @ENOTCAPABLE, align 8
  %413 = icmp eq i64 %411, %412
  br label %414

414:                                              ; preds = %410, %377
  %415 = phi i1 [ false, %377 ], [ %413, %410 ]
  %416 = zext i1 %415 to i32
  %417 = call i32 @CHECK(i32 %416)
  %418 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 1, i32* %418, align 16
  %419 = load i32*, i32** %3, align 8
  %420 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %421 = call i32 @cap_grp_limit_groups(i32* %419, i8** null, i32 0, i32* %420, i32 1)
  %422 = icmp eq i32 %421, -1
  br i1 %422, label %423, label %427

423:                                              ; preds = %414
  %424 = load i64, i64* @errno, align 8
  %425 = load i64, i64* @ENOTCAPABLE, align 8
  %426 = icmp eq i64 %424, %425
  br label %427

427:                                              ; preds = %423, %414
  %428 = phi i1 [ false, %414 ], [ %426, %423 ]
  %429 = zext i1 %428 to i32
  %430 = call i32 @CHECK(i32 %429)
  %431 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %431, align 16
  %432 = load i32*, i32** %3, align 8
  %433 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %434 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %435 = call i32 @runtest_groups(i32* %432, i8** %433, i32* %434, i32 2)
  %436 = call i32 @CHECK(i32 %435)
  %437 = load i32*, i32** %3, align 8
  %438 = call i32 @cap_close(i32* %437)
  ret void
}

declare dso_local i32* @cap_clone(i32*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @cap_grp_limit_groups(i32*, i8**, i32, i32*, i32) #1

declare dso_local i32 @runtest_groups(i32*, i8**, i32*, i32) #1

declare dso_local i32 @cap_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
