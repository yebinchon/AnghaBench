; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_keytab_file.c_fkt_next_entry_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_keytab_file.c_fkt_next_entry_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.fkt_data* }
%struct.fkt_data = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, i8*, i32, i8*, i32 }
%struct.TYPE_7__ = type { i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32*)* @fkt_next_entry_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fkt_next_entry_int(i32 %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2, %struct.TYPE_7__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.fkt_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.fkt_data*, %struct.fkt_data** %23, align 8
  store %struct.fkt_data* %24, %struct.fkt_data** %14, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SEEK_CUR, align 4
  %29 = call i32 @krb5_storage_seek(i32 %27, i32 0, i32 %28)
  store i32 %29, i32* %20, align 4
  br label %30

30:                                               ; preds = %42, %6
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @krb5_ret_int32(i32 %33, i32* %15)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %16, align 4
  store i32 %38, i32* %7, align 4
  br label %176

39:                                               ; preds = %30
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %15, align 4
  %47 = sub nsw i32 0, %46
  %48 = load i32, i32* @SEEK_CUR, align 4
  %49 = call i32 @krb5_storage_seek(i32 %45, i32 %47, i32 %48)
  store i32 %49, i32* %20, align 4
  br label %30

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.fkt_data*, %struct.fkt_data** %14, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 5
  %58 = call i32 @krb5_kt_ret_principal(i32 %51, %struct.fkt_data* %52, i32 %55, i32* %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %165

62:                                               ; preds = %50
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @krb5_ret_uint32(i32 %65, i8** %19)
  store i32 %66, i32* %16, align 4
  %67 = load i8*, i8** %19, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %165

73:                                               ; preds = %62
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @krb5_ret_int8(i32 %76, i32* %17)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %165

81:                                               ; preds = %73
  %82 = load i32, i32* %17, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.fkt_data*, %struct.fkt_data** %14, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = call i32 @krb5_kt_ret_keyblock(i32 %85, %struct.fkt_data* %86, i32 %89, i32* %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %81
  br label %165

96:                                               ; preds = %81
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SEEK_CUR, align 4
  %101 = call i32 @krb5_storage_seek(i32 %99, i32 0, i32 %100)
  store i32 %101, i32* %21, align 4
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 4
  %104 = load i32, i32* %20, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i32, i32* %21, align 4
  %107 = sub nsw i32 %105, %106
  %108 = icmp sge i32 %107, 4
  br i1 %108, label %109, label %124

109:                                              ; preds = %96
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @krb5_ret_int32(i32 %112, i32* %18)
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %16, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32, i32* %18, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %119, %116, %109
  br label %124

124:                                              ; preds = %123, %96
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 4
  %127 = load i32, i32* %20, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* %21, align 4
  %130 = sub nsw i32 %128, %129
  %131 = icmp sge i32 %130, 8
  br i1 %131, label %132, label %144

132:                                              ; preds = %124
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @krb5_ret_uint32(i32 %135, i8** %19)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i8*, i8** %19, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %139, %132
  br label %147

144:                                              ; preds = %124
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  store i8* null, i8** %146, align 8
  br label %147

147:                                              ; preds = %144, %143
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  store i32* null, i32** %149, align 8
  %150 = load i32*, i32** %12, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32, i32* %20, align 4
  %154 = load i32*, i32** %12, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %147
  %156 = load i32*, i32** %13, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i32, i32* %20, align 4
  %160 = add nsw i32 %159, 4
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %160, %161
  %163 = load i32*, i32** %13, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %158, %155
  br label %165

165:                                              ; preds = %164, %95, %80, %72, %61
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %20, align 4
  %170 = add nsw i32 %169, 4
  %171 = load i32, i32* %15, align 4
  %172 = add nsw i32 %170, %171
  %173 = load i32, i32* @SEEK_SET, align 4
  %174 = call i32 @krb5_storage_seek(i32 %168, i32 %172, i32 %173)
  %175 = load i32, i32* %16, align 4
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %165, %37
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local i32 @krb5_storage_seek(i32, i32, i32) #1

declare dso_local i32 @krb5_ret_int32(i32, i32*) #1

declare dso_local i32 @krb5_kt_ret_principal(i32, %struct.fkt_data*, i32, i32*) #1

declare dso_local i32 @krb5_ret_uint32(i32, i8**) #1

declare dso_local i32 @krb5_ret_int8(i32, i32*) #1

declare dso_local i32 @krb5_kt_ret_keyblock(i32, %struct.fkt_data*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
