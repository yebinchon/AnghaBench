; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_dgram.c_dgram_sctp_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_dgram.c_dgram_sctp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64, %struct.bio_dgram_sctp_prinfo, %struct.sctp_sndrcvinfo }
%struct.bio_dgram_sctp_prinfo = type { i32, i32 }
%struct.sctp_sndrcvinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bio_dgram_sctp_sndinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iovec = type { i8*, i32 }
%struct.msghdr = type { i32, i64, i64, i64, %struct.iovec*, i64, i32* }
%struct.cmsghdr = type { i8*, i32, i8* }

@IPPROTO_SCTP = common dso_local global i8* null, align 8
@SCTP_SNDRCV = common dso_local global i32 0, align 4
@SCTP_PRINFO = common dso_local global i32 0, align 4
@SCTP_SACK_IMMEDIATELY = common dso_local global i32 0, align 4
@SCTP_SNDINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32)* @dgram_sctp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dgram_sctp_write(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.bio_dgram_sctp_sndinfo*, align 8
  %11 = alloca %struct.bio_dgram_sctp_prinfo*, align 8
  %12 = alloca %struct.bio_dgram_sctp_sndinfo, align 4
  %13 = alloca [1 x %struct.iovec], align 16
  %14 = alloca %struct.msghdr, align 8
  %15 = alloca %struct.cmsghdr*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.sctp_sndrcvinfo*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %9, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = bitcast %struct.sctp_sndrcvinfo* %25 to %struct.bio_dgram_sctp_sndinfo*
  store %struct.bio_dgram_sctp_sndinfo* %26, %struct.bio_dgram_sctp_sndinfo** %10, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store %struct.bio_dgram_sctp_prinfo* %28, %struct.bio_dgram_sctp_prinfo** %11, align 8
  %29 = call i64 @CMSG_SPACE(i32 44)
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %16, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %17, align 8
  %32 = call i32 (...) @clear_socket_error()
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 23
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = bitcast %struct.bio_dgram_sctp_sndinfo* %12 to %struct.sctp_sndrcvinfo*
  %40 = call i32 @memset(%struct.sctp_sndrcvinfo* %39, i32 0, i32 44)
  store %struct.bio_dgram_sctp_sndinfo* %12, %struct.bio_dgram_sctp_sndinfo** %10, align 8
  br label %41

41:                                               ; preds = %38, %3
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = call i32 @BIO_dgram_sctp_wait_for_dry(%struct.TYPE_8__* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %142

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = call i32 @BIO_clear_retry_flags(%struct.TYPE_8__* %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = call i32 @BIO_set_retry_write(%struct.TYPE_8__* %58)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %142

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %41
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %13, i64 0, i64 0
  %64 = getelementptr inbounds %struct.iovec, %struct.iovec* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 16
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %13, i64 0, i64 0
  %67 = getelementptr inbounds %struct.iovec, %struct.iovec* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 6
  store i32* null, i32** %68, align 8
  %69 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 5
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %13, i64 0, i64 0
  %71 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 4
  store %struct.iovec* %70, %struct.iovec** %71, align 8
  %72 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = ptrtoint i8* %31 to i64
  %74 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 3
  store i64 %73, i64* %74, align 8
  %75 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = bitcast i8* %31 to %struct.cmsghdr*
  store %struct.cmsghdr* %77, %struct.cmsghdr** %15, align 8
  %78 = load i8*, i8** @IPPROTO_SCTP, align 8
  %79 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %80 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @SCTP_SNDRCV, align 4
  %82 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %83 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = call i8* @CMSG_LEN(i32 44)
  %85 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %86 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.cmsghdr*, %struct.cmsghdr** %15, align 8
  %88 = call i64 @CMSG_DATA(%struct.cmsghdr* %87)
  %89 = inttoptr i64 %88 to %struct.sctp_sndrcvinfo*
  store %struct.sctp_sndrcvinfo* %89, %struct.sctp_sndrcvinfo** %18, align 8
  %90 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %18, align 8
  %91 = call i32 @memset(%struct.sctp_sndrcvinfo* %90, i32 0, i32 44)
  %92 = load %struct.bio_dgram_sctp_sndinfo*, %struct.bio_dgram_sctp_sndinfo** %10, align 8
  %93 = getelementptr inbounds %struct.bio_dgram_sctp_sndinfo, %struct.bio_dgram_sctp_sndinfo* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %18, align 8
  %96 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %95, i32 0, i32 8
  store i32 %94, i32* %96, align 4
  %97 = load %struct.bio_dgram_sctp_sndinfo*, %struct.bio_dgram_sctp_sndinfo** %10, align 8
  %98 = getelementptr inbounds %struct.bio_dgram_sctp_sndinfo, %struct.bio_dgram_sctp_sndinfo* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %18, align 8
  %101 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load %struct.bio_dgram_sctp_sndinfo*, %struct.bio_dgram_sctp_sndinfo** %10, align 8
  %103 = getelementptr inbounds %struct.bio_dgram_sctp_sndinfo, %struct.bio_dgram_sctp_sndinfo* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %18, align 8
  %106 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load %struct.bio_dgram_sctp_sndinfo*, %struct.bio_dgram_sctp_sndinfo** %10, align 8
  %108 = getelementptr inbounds %struct.bio_dgram_sctp_sndinfo, %struct.bio_dgram_sctp_sndinfo* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %18, align 8
  %111 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.bio_dgram_sctp_prinfo*, %struct.bio_dgram_sctp_prinfo** %11, align 8
  %113 = getelementptr inbounds %struct.bio_dgram_sctp_prinfo, %struct.bio_dgram_sctp_prinfo* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %18, align 8
  %116 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = call i64 @CMSG_SPACE(i32 44)
  %118 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, %117
  store i64 %120, i64* %118, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @sendmsg(i32 %123, %struct.msghdr* %14, i32 0)
  store i32 %124, i32* %8, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %126 = call i32 @BIO_clear_retry_flags(%struct.TYPE_8__* %125)
  %127 = load i32, i32* %8, align 4
  %128 = icmp sle i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %61
  %130 = load i32, i32* %8, align 4
  %131 = call i64 @BIO_dgram_should_retry(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %135 = call i32 @BIO_set_retry_write(%struct.TYPE_8__* %134)
  %136 = call i32 (...) @get_last_socket_error()
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %133, %129
  br label %140

140:                                              ; preds = %139, %61
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %142

142:                                              ; preds = %140, %55, %51
  %143 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i64 @CMSG_SPACE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @clear_socket_error(...) #1

declare dso_local i32 @memset(%struct.sctp_sndrcvinfo*, i32, i32) #1

declare dso_local i32 @BIO_dgram_sctp_wait_for_dry(%struct.TYPE_8__*) #1

declare dso_local i32 @BIO_clear_retry_flags(%struct.TYPE_8__*) #1

declare dso_local i32 @BIO_set_retry_write(%struct.TYPE_8__*) #1

declare dso_local i8* @CMSG_LEN(i32) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i64 @BIO_dgram_should_retry(i32) #1

declare dso_local i32 @get_last_socket_error(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
