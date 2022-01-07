; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_sctp_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_sctp_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outdata = type { i32 }
%struct.sctphdr = type { i32, i32, i32, i8* }
%struct.sctp_chunkhdr = type { i8*, i64, i32 }
%struct.sctp_init_chunk = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i64, i32 }
%struct.sctp_paramhdr = type { i8*, i8* }

@outp = common dso_local global i64 0, align 8
@ident = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@fixedPort = common dso_local global i64 0, align 8
@protlen = common dso_local global i32 0, align 4
@SCTP_INITIATION = common dso_local global i32 0, align 4
@SCTP_PAD = common dso_local global i32 0, align 4
@SCTP_SHUTDOWN_ACK = common dso_local global i32 0, align 4
@SCTP_PAD_CHUNK = common dso_local global i32 0, align 4
@doipcksum = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_prep(%struct.outdata* %0) #0 {
  %2 = alloca %struct.outdata*, align 8
  %3 = alloca %struct.sctphdr*, align 8
  %4 = alloca %struct.sctp_chunkhdr*, align 8
  %5 = alloca %struct.sctp_init_chunk*, align 8
  %6 = alloca %struct.sctp_paramhdr*, align 8
  store %struct.outdata* %0, %struct.outdata** %2, align 8
  %7 = load i64, i64* @outp, align 8
  %8 = inttoptr i64 %7 to %struct.sctphdr*
  store %struct.sctphdr* %8, %struct.sctphdr** %3, align 8
  %9 = load i32, i32* @ident, align 4
  %10 = call i8* @htons(i32 %9)
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.sctphdr*, %struct.sctphdr** %3, align 8
  %13 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @port, align 4
  %15 = load i64, i64* @fixedPort, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.outdata*, %struct.outdata** %2, align 8
  %20 = getelementptr inbounds %struct.outdata, %struct.outdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  br label %22

22:                                               ; preds = %18, %17
  %23 = phi i32 [ 0, %17 ], [ %21, %18 ]
  %24 = add nsw i32 %14, %23
  %25 = call i8* @htons(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.sctphdr*, %struct.sctphdr** %3, align 8
  %28 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @protlen, align 4
  %30 = icmp sge i32 %29, 88
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.sctphdr*, %struct.sctphdr** %3, align 8
  %33 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %32, i32 0, i32 2
  store i32 0, i32* %33, align 8
  br label %45

34:                                               ; preds = %22
  %35 = load %struct.sctphdr*, %struct.sctphdr** %3, align 8
  %36 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 16
  %39 = load %struct.sctphdr*, %struct.sctphdr** %3, align 8
  %40 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %38, %41
  %43 = load %struct.sctphdr*, %struct.sctphdr** %3, align 8
  %44 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %34, %31
  %46 = call i8* @htonl(i32 0)
  %47 = load %struct.sctphdr*, %struct.sctphdr** %3, align 8
  %48 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @protlen, align 4
  %50 = icmp sge i32 %49, 88
  br i1 %50, label %51, label %116

51:                                               ; preds = %45
  %52 = load %struct.sctphdr*, %struct.sctphdr** %3, align 8
  %53 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %52, i64 1
  %54 = bitcast %struct.sctphdr* %53 to %struct.sctp_init_chunk*
  store %struct.sctp_init_chunk* %54, %struct.sctp_init_chunk** %5, align 8
  %55 = load i32, i32* @SCTP_INITIATION, align 4
  %56 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %5, align 8
  %57 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  %59 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %5, align 8
  %60 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @protlen, align 4
  %63 = sext i32 %62 to i64
  %64 = sub i64 %63, 24
  %65 = trunc i64 %64 to i32
  %66 = call i8* @htons(i32 %65)
  %67 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %5, align 8
  %68 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i8* %66, i8** %69, align 8
  %70 = load %struct.sctphdr*, %struct.sctphdr** %3, align 8
  %71 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %72, 16
  %74 = load %struct.sctphdr*, %struct.sctphdr** %3, align 8
  %75 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %73, %76
  %78 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %5, align 8
  %79 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = call i8* @htonl(i32 1500)
  %82 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %5, align 8
  %83 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  store i8* %81, i8** %84, align 8
  %85 = call i8* @htons(i32 1)
  %86 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %5, align 8
  %87 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  store i8* %85, i8** %88, align 8
  %89 = call i8* @htons(i32 1)
  %90 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %5, align 8
  %91 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  store i8* %89, i8** %92, align 8
  %93 = call i8* @htonl(i32 0)
  %94 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %5, align 8
  %95 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i8* %93, i8** %96, align 8
  %97 = load i32, i32* @protlen, align 4
  %98 = icmp sge i32 %97, 104
  br i1 %98, label %99, label %115

99:                                               ; preds = %51
  %100 = load %struct.sctp_init_chunk*, %struct.sctp_init_chunk** %5, align 8
  %101 = getelementptr inbounds %struct.sctp_init_chunk, %struct.sctp_init_chunk* %100, i64 1
  %102 = bitcast %struct.sctp_init_chunk* %101 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %102, %struct.sctp_paramhdr** %6, align 8
  %103 = load i32, i32* @SCTP_PAD, align 4
  %104 = call i8* @htons(i32 %103)
  %105 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %6, align 8
  %106 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* @protlen, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 %108, 24
  %110 = sub i64 %109, 64
  %111 = trunc i64 %110 to i32
  %112 = call i8* @htons(i32 %111)
  %113 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %6, align 8
  %114 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %99, %51
  br label %150

116:                                              ; preds = %45
  %117 = load i32, i32* @protlen, align 4
  %118 = icmp sge i32 %117, 48
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = load %struct.sctphdr*, %struct.sctphdr** %3, align 8
  %121 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %120, i64 1
  %122 = bitcast %struct.sctphdr* %121 to %struct.sctp_chunkhdr*
  store %struct.sctp_chunkhdr* %122, %struct.sctp_chunkhdr** %4, align 8
  %123 = load i32, i32* @SCTP_SHUTDOWN_ACK, align 4
  %124 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %4, align 8
  %125 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %4, align 8
  %127 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = call i8* @htons(i32 4)
  %129 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %4, align 8
  %130 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %119, %116
  %132 = load i32, i32* @protlen, align 4
  %133 = icmp sge i32 %132, 72
  br i1 %133, label %134, label %149

134:                                              ; preds = %131
  %135 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %4, align 8
  %136 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %135, i64 1
  store %struct.sctp_chunkhdr* %136, %struct.sctp_chunkhdr** %4, align 8
  %137 = load i32, i32* @SCTP_PAD_CHUNK, align 4
  %138 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %4, align 8
  %139 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %4, align 8
  %141 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load i32, i32* @protlen, align 4
  %143 = sext i32 %142 to i64
  %144 = sub i64 %143, 48
  %145 = trunc i64 %144 to i32
  %146 = call i8* @htons(i32 %145)
  %147 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %4, align 8
  %148 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %134, %131
  br label %150

150:                                              ; preds = %149, %115
  %151 = load i64, i64* @doipcksum, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load %struct.sctphdr*, %struct.sctphdr** %3, align 8
  %155 = load i32, i32* @protlen, align 4
  %156 = call i8* @sctp_crc32c(%struct.sctphdr* %154, i32 %155)
  %157 = load %struct.sctphdr*, %struct.sctphdr** %3, align 8
  %158 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %157, i32 0, i32 3
  store i8* %156, i8** %158, align 8
  br label %159

159:                                              ; preds = %153, %150
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @sctp_crc32c(%struct.sctphdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
