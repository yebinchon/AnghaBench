; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_test_sshkey.c_build_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_test_sshkey.c_build_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }
%struct.sshkey = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"gsamsa\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"gregor\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"force-command\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"/usr/local/bin/nethack\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"source-address\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"192.168.0.0/24,127.0.0.1,::1\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"permit-X11-forwarding\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"noncenoncenonce!\00", align 1
@SSH2_CERT_TYPE_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sshbuf*, %struct.sshkey*, i8*, %struct.sshkey*, %struct.sshkey*, i8*)* @build_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_cert(%struct.sshbuf* %0, %struct.sshkey* %1, i8* %2, %struct.sshkey* %3, %struct.sshkey* %4, i8* %5) #0 {
  %7 = alloca %struct.sshbuf*, align 8
  %8 = alloca %struct.sshkey*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sshkey*, align 8
  %11 = alloca %struct.sshkey*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sshbuf*, align 8
  %14 = alloca %struct.sshbuf*, align 8
  %15 = alloca %struct.sshbuf*, align 8
  %16 = alloca %struct.sshbuf*, align 8
  %17 = alloca %struct.sshbuf*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store %struct.sshbuf* %0, %struct.sshbuf** %7, align 8
  store %struct.sshkey* %1, %struct.sshkey** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.sshkey* %3, %struct.sshkey** %10, align 8
  store %struct.sshkey* %4, %struct.sshkey** %11, align 8
  store i8* %5, i8** %12, align 8
  %20 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %20, %struct.sshbuf** %13, align 8
  %21 = load %struct.sshbuf*, %struct.sshbuf** %13, align 8
  %22 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %21, i32* null)
  %23 = load %struct.sshkey*, %struct.sshkey** %11, align 8
  %24 = load %struct.sshbuf*, %struct.sshbuf** %13, align 8
  %25 = call i32 @sshkey_putb(%struct.sshkey* %23, %struct.sshbuf* %24)
  %26 = call i32 @ASSERT_INT_EQ(i32 %25, i32 0)
  %27 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %27, %struct.sshbuf** %14, align 8
  %28 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %29 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %28, i32* null)
  %30 = load %struct.sshkey*, %struct.sshkey** %8, align 8
  %31 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %32 = call i32 @sshkey_putb_plain(%struct.sshkey* %30, %struct.sshbuf* %31)
  %33 = call i32 @ASSERT_INT_EQ(i32 %32, i32 0)
  %34 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %35 = call i32 @sshbuf_skip_string(%struct.sshbuf* %34)
  %36 = call i32 @ASSERT_INT_EQ(i32 %35, i32 0)
  %37 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %37, %struct.sshbuf** %15, align 8
  %38 = load %struct.sshbuf*, %struct.sshbuf** %15, align 8
  %39 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %38, i32* null)
  %40 = load %struct.sshbuf*, %struct.sshbuf** %15, align 8
  %41 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @ASSERT_INT_EQ(i32 %41, i32 0)
  %43 = load %struct.sshbuf*, %struct.sshbuf** %15, align 8
  %44 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 @ASSERT_INT_EQ(i32 %44, i32 0)
  %46 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %46, %struct.sshbuf** %16, align 8
  %47 = load %struct.sshbuf*, %struct.sshbuf** %16, align 8
  %48 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %47, i32* null)
  %49 = load %struct.sshbuf*, %struct.sshbuf** %16, align 8
  %50 = call i32 @put_opt(%struct.sshbuf* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.sshbuf*, %struct.sshbuf** %16, align 8
  %52 = call i32 @put_opt(%struct.sshbuf* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %53 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %53, %struct.sshbuf** %17, align 8
  %54 = load %struct.sshbuf*, %struct.sshbuf** %17, align 8
  %55 = call i32 @ASSERT_PTR_NE(%struct.sshbuf* %54, i32* null)
  %56 = load %struct.sshbuf*, %struct.sshbuf** %16, align 8
  %57 = call i32 @put_opt(%struct.sshbuf* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* null)
  %58 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %58, i8* %59)
  %61 = call i32 @ASSERT_INT_EQ(i32 %60, i32 0)
  %62 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %63 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %64 = call i32 @ASSERT_INT_EQ(i32 %63, i32 0)
  %65 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %66 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %67 = call i32 @sshbuf_putb(%struct.sshbuf* %65, %struct.sshbuf* %66)
  %68 = call i32 @ASSERT_INT_EQ(i32 %67, i32 0)
  %69 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %70 = call i32 @sshbuf_put_u64(%struct.sshbuf* %69, i32 1234)
  %71 = call i32 @ASSERT_INT_EQ(i32 %70, i32 0)
  %72 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %73 = load i32, i32* @SSH2_CERT_TYPE_USER, align 4
  %74 = call i32 @sshbuf_put_u32(%struct.sshbuf* %72, i32 %73)
  %75 = call i32 @ASSERT_INT_EQ(i32 %74, i32 0)
  %76 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %77 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %78 = call i32 @ASSERT_INT_EQ(i32 %77, i32 0)
  %79 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %80 = load %struct.sshbuf*, %struct.sshbuf** %15, align 8
  %81 = call i32 @sshbuf_put_stringb(%struct.sshbuf* %79, %struct.sshbuf* %80)
  %82 = call i32 @ASSERT_INT_EQ(i32 %81, i32 0)
  %83 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %84 = call i32 @sshbuf_put_u64(%struct.sshbuf* %83, i32 0)
  %85 = call i32 @ASSERT_INT_EQ(i32 %84, i32 0)
  %86 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %87 = call i32 @sshbuf_put_u64(%struct.sshbuf* %86, i32 -1)
  %88 = call i32 @ASSERT_INT_EQ(i32 %87, i32 0)
  %89 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %90 = load %struct.sshbuf*, %struct.sshbuf** %16, align 8
  %91 = call i32 @sshbuf_put_stringb(%struct.sshbuf* %89, %struct.sshbuf* %90)
  %92 = call i32 @ASSERT_INT_EQ(i32 %91, i32 0)
  %93 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %94 = load %struct.sshbuf*, %struct.sshbuf** %17, align 8
  %95 = call i32 @sshbuf_put_stringb(%struct.sshbuf* %93, %struct.sshbuf* %94)
  %96 = call i32 @ASSERT_INT_EQ(i32 %95, i32 0)
  %97 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %98 = call i32 @sshbuf_put_string(%struct.sshbuf* %97, i32* null, i64 0)
  %99 = call i32 @ASSERT_INT_EQ(i32 %98, i32 0)
  %100 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %101 = load %struct.sshbuf*, %struct.sshbuf** %13, align 8
  %102 = call i32 @sshbuf_put_stringb(%struct.sshbuf* %100, %struct.sshbuf* %101)
  %103 = call i32 @ASSERT_INT_EQ(i32 %102, i32 0)
  %104 = load %struct.sshkey*, %struct.sshkey** %10, align 8
  %105 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %106 = call i32 @sshbuf_ptr(%struct.sshbuf* %105)
  %107 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %108 = call i32 @sshbuf_len(%struct.sshbuf* %107)
  %109 = load i8*, i8** %12, align 8
  %110 = call i32 @sshkey_sign(%struct.sshkey* %104, i32** %18, i64* %19, i32 %106, i32 %108, i8* %109, i32 0)
  %111 = call i32 @ASSERT_INT_EQ(i32 %110, i32 0)
  %112 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %113 = load i32*, i32** %18, align 8
  %114 = load i64, i64* %19, align 8
  %115 = call i32 @sshbuf_put_string(%struct.sshbuf* %112, i32* %113, i64 %114)
  %116 = call i32 @ASSERT_INT_EQ(i32 %115, i32 0)
  %117 = load i32*, i32** %18, align 8
  %118 = call i32 @free(i32* %117)
  %119 = load %struct.sshbuf*, %struct.sshbuf** %13, align 8
  %120 = call i32 @sshbuf_free(%struct.sshbuf* %119)
  %121 = load %struct.sshbuf*, %struct.sshbuf** %17, align 8
  %122 = call i32 @sshbuf_free(%struct.sshbuf* %121)
  %123 = load %struct.sshbuf*, %struct.sshbuf** %16, align 8
  %124 = call i32 @sshbuf_free(%struct.sshbuf* %123)
  %125 = load %struct.sshbuf*, %struct.sshbuf** %15, align 8
  %126 = call i32 @sshbuf_free(%struct.sshbuf* %125)
  %127 = load %struct.sshbuf*, %struct.sshbuf** %14, align 8
  %128 = call i32 @sshbuf_free(%struct.sshbuf* %127)
  ret void
}

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @ASSERT_PTR_NE(%struct.sshbuf*, i32*) #1

declare dso_local i32 @ASSERT_INT_EQ(i32, i32) #1

declare dso_local i32 @sshkey_putb(%struct.sshkey*, %struct.sshbuf*) #1

declare dso_local i32 @sshkey_putb_plain(%struct.sshkey*, %struct.sshbuf*) #1

declare dso_local i32 @sshbuf_skip_string(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i8*) #1

declare dso_local i32 @put_opt(%struct.sshbuf*, i8*, i8*) #1

declare dso_local i32 @sshbuf_putb(%struct.sshbuf*, %struct.sshbuf*) #1

declare dso_local i32 @sshbuf_put_u64(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_u32(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_stringb(%struct.sshbuf*, %struct.sshbuf*) #1

declare dso_local i32 @sshbuf_put_string(%struct.sshbuf*, i32*, i64) #1

declare dso_local i32 @sshkey_sign(%struct.sshkey*, i32**, i64*, i32, i32, i8*, i32) #1

declare dso_local i32 @sshbuf_ptr(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
