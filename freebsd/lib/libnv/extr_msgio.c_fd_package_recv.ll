; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnv/extr_msgio.c_fd_package_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnv/extr_msgio.c_fd_package_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, i32, i64, i32*, %struct.msghdr*, i32* }
%struct.cmsghdr = type { i64, i64, i32 }
%struct.iovec = type { i32, i32, i64, i32*, %struct.iovec*, i32* }

@SOL_SOCKET = common dso_local global i64 0, align 8
@SCM_RIGHTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64)* @fd_package_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_package_recv(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.msghdr, align 8
  %9 = alloca %struct.cmsghdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iovec, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @PJDLOG_ASSERT(i32 %19)
  %21 = load i64, i64* %7, align 8
  %22 = icmp ugt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @PJDLOG_ASSERT(i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @PJDLOG_ASSERT(i32 %27)
  %29 = call i32 @bzero(%struct.msghdr* %8, i32 40)
  %30 = bitcast %struct.iovec* %13 to %struct.msghdr*
  %31 = call i32 @bzero(%struct.msghdr* %30, i32 40)
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 5
  store i32* %14, i32** %32, align 8
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  store i32 4, i32* %33, align 8
  %34 = bitcast %struct.iovec* %13 to %struct.msghdr*
  %35 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 4
  store %struct.msghdr* %34, %struct.msghdr** %35, align 8
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @CMSG_SPACE(i32 4)
  %39 = mul i64 %37, %38
  %40 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 2
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32* @calloc(i32 1, i64 %42)
  %44 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 3
  store i32* %43, i32** %44, align 8
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %174

49:                                               ; preds = %3
  store i32 -1, i32* %12, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @msg_recv(i32 %50, %struct.msghdr* %8)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %167

54:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  %55 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %8)
  store %struct.cmsghdr* %55, %struct.cmsghdr** %9, align 8
  br label %56

56:                                               ; preds = %97, %54
  %57 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %58 = icmp ne %struct.cmsghdr* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* %7, align 8
  %63 = icmp ult i64 %61, %62
  br label %64

64:                                               ; preds = %59, %56
  %65 = phi i1 [ false, %56 ], [ %63, %59 ]
  br i1 %65, label %66, label %114

66:                                               ; preds = %64
  %67 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %68 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SOL_SOCKET, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %74 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SCM_RIGHTS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72, %66
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* @errno, align 4
  br label %114

80:                                               ; preds = %72
  %81 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %82 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @CMSG_LEN(i32 0)
  %85 = sub nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = udiv i64 %86, 4
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %15, align 4
  %91 = add i32 %89, %90
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* %7, align 8
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %80
  %96 = load i32, i32* @EINVAL, align 4
  store i32 %96, i32* @errno, align 4
  br label %114

97:                                               ; preds = %80
  %98 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %99 = call i32 @CMSG_DATA(%struct.cmsghdr* %98)
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %15, align 4
  %105 = zext i32 %104 to i64
  %106 = mul i64 4, %105
  %107 = trunc i64 %106 to i32
  %108 = call i32 @bcopy(i32 %99, i32* %103, i32 %107)
  %109 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %110 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %8, %struct.cmsghdr* %109)
  store %struct.cmsghdr* %110, %struct.cmsghdr** %9, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %10, align 4
  %113 = add i32 %112, %111
  store i32 %113, i32* %10, align 4
  br label %56

114:                                              ; preds = %95, %78, %64
  %115 = load %struct.cmsghdr*, %struct.cmsghdr** %9, align 8
  %116 = icmp ne %struct.cmsghdr* %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %10, align 4
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* %7, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %148

122:                                              ; preds = %117, %114
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %16, align 4
  store i32 0, i32* %10, align 4
  br label %124

124:                                              ; preds = %143, %122
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %10, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %10, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @close(i32 %140)
  br label %142

142:                                              ; preds = %135, %128
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %10, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %124

146:                                              ; preds = %124
  %147 = load i32, i32* @EINVAL, align 4
  store i32 %147, i32* @errno, align 4
  br label %167

148:                                              ; preds = %117
  store i32 0, i32* %10, align 4
  br label %149

149:                                              ; preds = %163, %148
  %150 = load i32, i32* %10, align 4
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* %7, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %149
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* %10, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @F_SETFD, align 4
  %161 = load i32, i32* @FD_CLOEXEC, align 4
  %162 = call i32 @fcntl(i32 %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %154
  %164 = load i32, i32* %10, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %10, align 4
  br label %149

166:                                              ; preds = %149
  store i32 0, i32* %12, align 4
  br label %167

167:                                              ; preds = %166, %146, %53
  %168 = load i32, i32* @errno, align 4
  store i32 %168, i32* %11, align 4
  %169 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @free(i32* %170)
  %172 = load i32, i32* %11, align 4
  store i32 %172, i32* @errno, align 4
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %167, %48
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @bzero(%struct.msghdr*, i32) #1

declare dso_local i64 @CMSG_SPACE(i32) #1

declare dso_local i32* @calloc(i32, i64) #1

declare dso_local i32 @msg_recv(i32, %struct.msghdr*) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @CMSG_LEN(i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
