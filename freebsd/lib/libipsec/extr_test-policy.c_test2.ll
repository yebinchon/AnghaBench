; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libipsec/extr_test-policy.c_test2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libipsec/extr_test-policy.c_test2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sadb_msg = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"out ipsec\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"out ipsec ah/transport//use\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"TEST2\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"root privilege required.\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ERROR: %s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"spdflush()\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"spdsetidx()\0A\00", align 1
@addr = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"spdupdate()\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"sleep(4)\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"spddelete()\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"spdadd()\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"spdget(%u)\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"spddelete2()\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"spdadd() with lifetime's 10(s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"ERROR: expecting failure.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sadb_msg*, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i64 (...) @getuid()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i8*, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = call i8* @ipsec_set_policy(i8* %16, i32 %18)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @ipsec_get_policylen(i8* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i8* @ipsec_set_policy(i8* %22, i32 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @ipsec_get_policylen(i8* %26)
  store i32 %27, i32* %7, align 4
  %28 = call i32 (...) @pfkey_open()
  store i32 %28, i32* %1, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %15
  %31 = call i32 (...) @ipsec_strerror()
  %32 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %15
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %35 = load i32, i32* %1, align 4
  %36 = call i64 @pfkey_send_spdflush(i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = call i32 (...) @ipsec_strerror()
  %40 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %1, align 4
  %43 = call %struct.sadb_msg* @pfkey_recv(i32 %42)
  store %struct.sadb_msg* %43, %struct.sadb_msg** %9, align 8
  %44 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %45 = call i32 @free(%struct.sadb_msg* %44)
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i32, i32* %1, align 4
  %48 = load i64, i64* @addr, align 8
  %49 = inttoptr i64 %48 to %struct.sockaddr*
  %50 = load i64, i64* @addr, align 8
  %51 = inttoptr i64 %50 to %struct.sockaddr*
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @pfkey_send_spdsetidx(i32 %47, %struct.sockaddr* %49, i32 128, %struct.sockaddr* %51, i32 128, i32 255, i8* %52, i32 %53, i32 0)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = call i32 (...) @ipsec_strerror()
  %58 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %41
  %60 = load i32, i32* %1, align 4
  %61 = call %struct.sadb_msg* @pfkey_recv(i32 %60)
  store %struct.sadb_msg* %61, %struct.sadb_msg** %9, align 8
  %62 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %63 = call i32 @free(%struct.sadb_msg* %62)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %65 = load i32, i32* %1, align 4
  %66 = load i64, i64* @addr, align 8
  %67 = inttoptr i64 %66 to %struct.sockaddr*
  %68 = load i64, i64* @addr, align 8
  %69 = inttoptr i64 %68 to %struct.sockaddr*
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @pfkey_send_spdupdate(i32 %65, %struct.sockaddr* %67, i32 128, %struct.sockaddr* %69, i32 128, i32 255, i8* %70, i32 %71, i32 0)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %59
  %75 = call i32 (...) @ipsec_strerror()
  %76 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %74, %59
  %78 = load i32, i32* %1, align 4
  %79 = call %struct.sadb_msg* @pfkey_recv(i32 %78)
  store %struct.sadb_msg* %79, %struct.sadb_msg** %9, align 8
  %80 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %81 = call i32 @free(%struct.sadb_msg* %80)
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %83 = call i32 @sleep(i32 4)
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %85 = load i32, i32* %1, align 4
  %86 = load i64, i64* @addr, align 8
  %87 = inttoptr i64 %86 to %struct.sockaddr*
  %88 = load i64, i64* @addr, align 8
  %89 = inttoptr i64 %88 to %struct.sockaddr*
  %90 = load i8*, i8** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i64 @pfkey_send_spddelete(i32 %85, %struct.sockaddr* %87, i32 128, %struct.sockaddr* %89, i32 128, i32 255, i8* %90, i32 %91, i32 0)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %77
  %95 = call i32 (...) @ipsec_strerror()
  %96 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %77
  %98 = load i32, i32* %1, align 4
  %99 = call %struct.sadb_msg* @pfkey_recv(i32 %98)
  store %struct.sadb_msg* %99, %struct.sadb_msg** %9, align 8
  %100 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %101 = call i32 @free(%struct.sadb_msg* %100)
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %103 = load i32, i32* %1, align 4
  %104 = load i64, i64* @addr, align 8
  %105 = inttoptr i64 %104 to %struct.sockaddr*
  %106 = load i64, i64* @addr, align 8
  %107 = inttoptr i64 %106 to %struct.sockaddr*
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i64 @pfkey_send_spdadd(i32 %103, %struct.sockaddr* %105, i32 128, %struct.sockaddr* %107, i32 128, i32 255, i8* %108, i32 %109, i32 0)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %97
  %113 = call i32 (...) @ipsec_strerror()
  %114 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %112, %97
  %116 = load i32, i32* %1, align 4
  %117 = call i32 @test2sub(i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %1, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i64 @pfkey_send_spdget(i32 %120, i32 %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = call i32 (...) @ipsec_strerror()
  %126 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %124, %115
  %128 = load i32, i32* %1, align 4
  %129 = call %struct.sadb_msg* @pfkey_recv(i32 %128)
  store %struct.sadb_msg* %129, %struct.sadb_msg** %9, align 8
  %130 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %131 = call i32 @free(%struct.sadb_msg* %130)
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %133 = call i32 @sleep(i32 4)
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %135 = load i32, i32* %1, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i64 @pfkey_send_spddelete2(i32 %135, i32 %136)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %127
  %140 = call i32 (...) @ipsec_strerror()
  %141 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %139, %127
  %143 = load i32, i32* %1, align 4
  %144 = call %struct.sadb_msg* @pfkey_recv(i32 %143)
  store %struct.sadb_msg* %144, %struct.sadb_msg** %9, align 8
  %145 = load %struct.sadb_msg*, %struct.sadb_msg** %9, align 8
  %146 = call i32 @free(%struct.sadb_msg* %145)
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  %148 = load i32, i32* %1, align 4
  %149 = load i64, i64* @addr, align 8
  %150 = inttoptr i64 %149 to %struct.sockaddr*
  %151 = load i64, i64* @addr, align 8
  %152 = inttoptr i64 %151 to %struct.sockaddr*
  %153 = load i8*, i8** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i64 @pfkey_send_spdadd2(i32 %148, %struct.sockaddr* %150, i32 128, %struct.sockaddr* %152, i32 128, i32 255, i32 0, i32 10, i8* %153, i32 %154, i32 0)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %142
  %158 = call i32 (...) @ipsec_strerror()
  %159 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %157, %142
  %161 = load i32, i32* %1, align 4
  %162 = call i32 @test2sub(i32 %161)
  store i32 %162, i32* %8, align 4
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %164 = load i32, i32* %1, align 4
  %165 = load i64, i64* @addr, align 8
  %166 = inttoptr i64 %165 to %struct.sockaddr*
  %167 = load i64, i64* @addr, align 8
  %168 = inttoptr i64 %167 to %struct.sockaddr*
  %169 = load i8*, i8** %5, align 8
  %170 = load i32, i32* %7, align 4
  %171 = call i64 @pfkey_send_spdupdate(i32 %164, %struct.sockaddr* %166, i32 128, %struct.sockaddr* %168, i32 128, i32 255, i8* %169, i32 %170, i32 0)
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %160
  %174 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %160
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @ipsec_set_policy(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ipsec_get_policylen(i8*) #1

declare dso_local i32 @pfkey_open(...) #1

declare dso_local i32 @ipsec_strerror(...) #1

declare dso_local i64 @pfkey_send_spdflush(i32) #1

declare dso_local %struct.sadb_msg* @pfkey_recv(i32) #1

declare dso_local i32 @free(%struct.sadb_msg*) #1

declare dso_local i64 @pfkey_send_spdsetidx(i32, %struct.sockaddr*, i32, %struct.sockaddr*, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @pfkey_send_spdupdate(i32, %struct.sockaddr*, i32, %struct.sockaddr*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @pfkey_send_spddelete(i32, %struct.sockaddr*, i32, %struct.sockaddr*, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @pfkey_send_spdadd(i32, %struct.sockaddr*, i32, %struct.sockaddr*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @test2sub(i32) #1

declare dso_local i64 @pfkey_send_spdget(i32, i32) #1

declare dso_local i64 @pfkey_send_spddelete2(i32, i32) #1

declare dso_local i64 @pfkey_send_spdadd2(i32, %struct.sockaddr*, i32, %struct.sockaddr*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
