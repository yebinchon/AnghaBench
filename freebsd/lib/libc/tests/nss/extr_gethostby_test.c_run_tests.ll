; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_run_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/nss/extr_gethostby_test.c_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent_test_data = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"inet6\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unhandled address family: %d\00", align 1
@use_ipnode_functions = common dso_local global i32 0, align 4
@RES_INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"error: can't init res_state\0A\00", align 1
@RES_USE_INET6 = common dso_local global i32 0, align 4
@hostent = common dso_local global i32 0, align 4
@clone_hostent = common dso_local global i32 0, align 4
@free_hostent = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"can't access the hostlist file %s\0A\00", align 1
@hostent_read_hostlist_func = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"failed to read the host list file: %s\0A\00", align 1
@W_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"can't access the snapshot file %s\0A\00", align 1
@hostent_read_snapshot_func = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"error reading snapshot file\0A\00", align 1
@compare_hostent = common dso_local global i32 0, align 4
@hostent_test_gethostbyaddr = common dso_local global i32 0, align 4
@hostent_test_getaddrinfo_eq = common dso_local global i32 0, align 4
@hostent_test_getnameinfo_eq = common dso_local global i32 0, align 4
@sdump_hostent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32)* @run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_tests(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.hostent_test_data, align 4
  %13 = alloca %struct.hostent_test_data, align 4
  %14 = alloca %struct.hostent_test_data, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 -2, i32* %16, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i8* null, i8** %11, align 8
  br label %27

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @strdup(i8* %21)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @ATF_REQUIRE(i32 %25)
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i8*, i8** %11, align 8
  store i8* %28, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %39 [
    i32 135, label %30
    i32 134, label %37
  ]

30:                                               ; preds = %27
  %31 = call i32 @ATF_REQUIRE_FEATURE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @ATF_REQUIRE(i32 %35)
  br label %42

37:                                               ; preds = %27
  %38 = call i32 @ATF_REQUIRE_FEATURE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %42

39:                                               ; preds = %27
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %37, %30
  %43 = load i32, i32* @use_ipnode_functions, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %79, label %45

45:                                               ; preds = %42
  %46 = call %struct.TYPE_4__* (...) @__res_state()
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %15, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %48 = icmp eq %struct.TYPE_4__* %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RES_INIT, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %58 = call i32 @res_ninit(%struct.TYPE_4__* %57)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %45
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %16, align 4
  br label %213

62:                                               ; preds = %56, %49
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* @RES_USE_INET6, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %78

71:                                               ; preds = %62
  %72 = load i32, i32* @RES_USE_INET6, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %71, %65
  br label %79

79:                                               ; preds = %78, %42
  %80 = load i32, i32* @hostent, align 4
  %81 = load i32, i32* @clone_hostent, align 4
  %82 = load i32, i32* @free_hostent, align 4
  %83 = call i32 @TEST_DATA_INIT(i32 %80, %struct.hostent_test_data* %12, i32 %81, i32 %82)
  %84 = load i32, i32* @hostent, align 4
  %85 = load i32, i32* @clone_hostent, align 4
  %86 = load i32, i32* @free_hostent, align 4
  %87 = call i32 @TEST_DATA_INIT(i32 %84, %struct.hostent_test_data* %13, i32 %85, i32 %86)
  %88 = load i32, i32* @hostent, align 4
  %89 = load i32, i32* @clone_hostent, align 4
  %90 = load i32, i32* @free_hostent, align 4
  %91 = call i32 @TEST_DATA_INIT(i32 %88, %struct.hostent_test_data* %14, i32 %89, i32 %90)
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* @R_OK, align 4
  %94 = call i64 @access(i8* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %79
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %97)
  store i32 -1, i32* %16, align 4
  br label %206

99:                                               ; preds = %79
  %100 = load i32, i32* @hostent, align 4
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* @hostent_read_hostlist_func, align 4
  %103 = call i32 @TEST_SNAPSHOT_FILE_READ(i32 %100, i8* %101, %struct.hostent_test_data* %12, i32 %102)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %107)
  br label %206

109:                                              ; preds = %99
  %110 = load i8*, i8** %7, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %144

112:                                              ; preds = %109
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* @W_OK, align 4
  %115 = load i32, i32* @R_OK, align 4
  %116 = or i32 %114, %115
  %117 = call i64 @access(i8* %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %112
  %120 = load i64, i64* @errno, align 8
  %121 = load i64, i64* @ENOENT, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 131
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 132, i32* %9, align 4
  br label %128

127:                                              ; preds = %123
  store i32 133, i32* %9, align 4
  br label %128

128:                                              ; preds = %127, %126
  br label %132

129:                                              ; preds = %119
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %130)
  store i32 -1, i32* %16, align 4
  br label %206

132:                                              ; preds = %128
  br label %143

133:                                              ; preds = %112
  %134 = load i32, i32* @hostent, align 4
  %135 = load i8*, i8** %7, align 8
  %136 = load i32, i32* @hostent_read_snapshot_func, align 4
  %137 = call i32 @TEST_SNAPSHOT_FILE_READ(i32 %134, i8* %135, %struct.hostent_test_data* %14, i32 %136)
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %206

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %132
  br label %144

144:                                              ; preds = %143, %109
  %145 = load i32, i32* %9, align 4
  switch i32 %145, label %204 [
    i32 129, label %146
    i32 131, label %154
    i32 128, label %170
    i32 130, label %174
    i32 132, label %178
    i32 133, label %187
  ]

146:                                              ; preds = %144
  %147 = load i8*, i8** %7, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, i32* @hostent, align 4
  %151 = load i32, i32* @compare_hostent, align 4
  %152 = call i32 @DO_2PASS_TEST(i32 %150, %struct.hostent_test_data* %12, %struct.hostent_test_data* %14, i32 %151, i32* null)
  store i32 %152, i32* %16, align 4
  br label %153

153:                                              ; preds = %149, %146
  br label %205

154:                                              ; preds = %144
  %155 = load i32, i32* @hostent, align 4
  %156 = load i32, i32* @hostent_test_gethostbyaddr, align 4
  %157 = bitcast %struct.hostent_test_data* %13 to i8*
  %158 = call i32 @DO_1PASS_TEST(i32 %155, %struct.hostent_test_data* %12, i32 %156, i8* %157)
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %16, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  br label %206

162:                                              ; preds = %154
  %163 = load i8*, i8** %7, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i32, i32* @hostent, align 4
  %167 = load i32, i32* @compare_hostent, align 4
  %168 = call i32 @DO_2PASS_TEST(i32 %166, %struct.hostent_test_data* %13, %struct.hostent_test_data* %14, i32 %167, i32* null)
  store i32 %168, i32* %16, align 4
  br label %169

169:                                              ; preds = %165, %162
  br label %205

170:                                              ; preds = %144
  %171 = load i32, i32* @hostent, align 4
  %172 = load i32, i32* @hostent_test_getaddrinfo_eq, align 4
  %173 = call i32 @DO_1PASS_TEST(i32 %171, %struct.hostent_test_data* %12, i32 %172, i8* null)
  store i32 %173, i32* %16, align 4
  br label %205

174:                                              ; preds = %144
  %175 = load i32, i32* @hostent, align 4
  %176 = load i32, i32* @hostent_test_getnameinfo_eq, align 4
  %177 = call i32 @DO_1PASS_TEST(i32 %175, %struct.hostent_test_data* %12, i32 %176, i8* null)
  store i32 %177, i32* %16, align 4
  br label %205

178:                                              ; preds = %144
  %179 = load i8*, i8** %7, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load i32, i32* @hostent, align 4
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* @sdump_hostent, align 4
  %185 = call i32 @TEST_SNAPSHOT_FILE_WRITE(i32 %182, i8* %183, %struct.hostent_test_data* %12, i32 %184)
  store i32 %185, i32* %16, align 4
  br label %186

186:                                              ; preds = %181, %178
  br label %205

187:                                              ; preds = %144
  %188 = load i8*, i8** %7, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %203

190:                                              ; preds = %187
  %191 = load i32, i32* @hostent, align 4
  %192 = load i32, i32* @hostent_test_gethostbyaddr, align 4
  %193 = bitcast %struct.hostent_test_data* %13 to i8*
  %194 = call i32 @DO_1PASS_TEST(i32 %191, %struct.hostent_test_data* %12, i32 %192, i8* %193)
  store i32 %194, i32* %16, align 4
  %195 = load i32, i32* %16, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  br label %206

198:                                              ; preds = %190
  %199 = load i32, i32* @hostent, align 4
  %200 = load i8*, i8** %7, align 8
  %201 = load i32, i32* @sdump_hostent, align 4
  %202 = call i32 @TEST_SNAPSHOT_FILE_WRITE(i32 %199, i8* %200, %struct.hostent_test_data* %13, i32 %201)
  store i32 %202, i32* %16, align 4
  br label %203

203:                                              ; preds = %198, %187
  br label %205

204:                                              ; preds = %144
  store i32 0, i32* %16, align 4
  br label %205

205:                                              ; preds = %204, %203, %186, %174, %170, %169, %153
  br label %206

206:                                              ; preds = %205, %197, %161, %140, %129, %106, %96
  %207 = load i32, i32* @hostent, align 4
  %208 = call i32 @TEST_DATA_DESTROY(i32 %207, %struct.hostent_test_data* %14)
  %209 = load i32, i32* @hostent, align 4
  %210 = call i32 @TEST_DATA_DESTROY(i32 %209, %struct.hostent_test_data* %13)
  %211 = load i32, i32* @hostent, align 4
  %212 = call i32 @TEST_DATA_DESTROY(i32 %211, %struct.hostent_test_data* %12)
  br label %213

213:                                              ; preds = %206, %60
  %214 = load i8*, i8** %11, align 8
  %215 = call i32 @free(i8* %214)
  %216 = load i32, i32* %16, align 4
  ret i32 %216
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @ATF_REQUIRE_FEATURE(i8*) #1

declare dso_local i32 @atf_tc_fail(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @__res_state(...) #1

declare dso_local i32 @res_ninit(%struct.TYPE_4__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @TEST_DATA_INIT(i32, %struct.hostent_test_data*, i32, i32) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @TEST_SNAPSHOT_FILE_READ(i32, i8*, %struct.hostent_test_data*, i32) #1

declare dso_local i32 @DO_2PASS_TEST(i32, %struct.hostent_test_data*, %struct.hostent_test_data*, i32, i32*) #1

declare dso_local i32 @DO_1PASS_TEST(i32, %struct.hostent_test_data*, i32, i8*) #1

declare dso_local i32 @TEST_SNAPSHOT_FILE_WRITE(i32, i8*, %struct.hostent_test_data*, i32) #1

declare dso_local i32 @TEST_DATA_DESTROY(i32, %struct.hostent_test_data*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
